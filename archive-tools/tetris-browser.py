#!/usr/bin/env python3
"""
Tetris Repository Browser
A local web server that allows browsing all Tetris games across all branches
"""

import os
import subprocess
import http.server
import socketserver
import json
from pathlib import Path
import webbrowser
import argparse

class TetrisBrowser:
    def __init__(self, port=8080):
        self.port = port
        self.current_branch = self.get_current_branch()

    def get_current_branch(self):
        """Get the current git branch"""
        try:
            result = subprocess.run(
                ['git', 'branch', '--show-current'],
                capture_output=True,
                text=True
            )
            return result.stdout.strip()
        except:
            return "unknown"

    def get_all_branches(self):
        """Get all branches in the repository"""
        try:
            result = subprocess.run(
                ['git', 'branch', '-a'],
                capture_output=True,
                text=True
            )
            branches = []
            for line in result.stdout.splitlines():
                line = line.strip()
                if line.startswith('*'):
                    line = line[2:]
                if 'remotes/origin/' in line:
                    line = line.replace('remotes/origin/', '')
                if line and line not in branches and 'HEAD' not in line:
                    branches.append(line)
            return sorted(set(branches))
        except:
            return []

    def checkout_branch(self, branch_name):
        """Checkout a specific branch"""
        print(f"Switching to branch: {branch_name}")
        try:
            # Stash any changes
            subprocess.run(['git', 'stash'], capture_output=True)
            # Checkout the branch
            result = subprocess.run(
                ['git', 'checkout', branch_name],
                capture_output=True,
                text=True
            )
            if result.returncode == 0:
                self.current_branch = branch_name
                return True
            else:
                print(f"Error: {result.stderr}")
                return False
        except Exception as e:
            print(f"Error switching branch: {e}")
            return False

    def get_html_files(self):
        """Get all HTML files in current directory"""
        html_files = []
        for file in Path('.').glob('*.html'):
            if file.name not in ['MASTER_GALLERY.html']:
                html_files.append(file.name)

        # Also check for p5-variations subfolder
        p5_path = Path('p5-variations')
        if p5_path.exists():
            for file in p5_path.glob('*.html'):
                html_files.append(f'p5-variations/{file.name}')

        return sorted(html_files)

    def generate_index(self):
        """Generate an index page for the current branch"""
        html_files = self.get_html_files()
        branches = self.get_all_branches()

        html = f"""<!DOCTYPE html>
<html>
<head>
    <title>Tetris Browser - {self.current_branch}</title>
    <style>
        body {{
            font-family: 'Courier New', monospace;
            margin: 0;
            padding: 20px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
        }}
        .container {{
            max-width: 1200px;
            margin: 0 auto;
            background: white;
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 20px 60px rgba(0,0,0,0.3);
        }}
        h1 {{
            color: #2c3e50;
            text-align: center;
            margin-bottom: 10px;
        }}
        .current-branch {{
            text-align: center;
            background: #667eea;
            color: white;
            padding: 10px 20px;
            border-radius: 10px;
            margin-bottom: 30px;
            font-size: 18px;
        }}
        .branch-selector {{
            margin-bottom: 30px;
            text-align: center;
        }}
        .branch-selector select {{
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            border: 2px solid #667eea;
            font-family: 'Courier New', monospace;
        }}
        .branch-button {{
            padding: 10px 20px;
            margin-left: 10px;
            background: #667eea;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-family: 'Courier New', monospace;
        }}
        .branch-button:hover {{
            background: #764ba2;
        }}
        .games-grid {{
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
            margin-top: 30px;
        }}
        .game-card {{
            background: #f8f9fa;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            transition: all 0.3s ease;
            cursor: pointer;
        }}
        .game-card:hover {{
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
        }}
        .game-card a {{
            text-decoration: none;
            color: #2c3e50;
            font-weight: bold;
        }}
        .game-icon {{
            font-size: 40px;
            margin-bottom: 10px;
        }}
        .info {{
            background: #e3f2fd;
            padding: 15px;
            border-radius: 10px;
            margin-bottom: 20px;
            border-left: 4px solid #2196f3;
        }}
        .warning {{
            background: #fff3cd;
            padding: 10px;
            border-radius: 5px;
            margin-top: 20px;
            border-left: 4px solid #ffc107;
        }}
    </style>
</head>
<body>
    <div class="container">
        <h1>🎮 Tetris Repository Browser</h1>
        <div class="current-branch">Current Branch: <strong>{self.current_branch}</strong></div>

        <div class="branch-selector">
            <label>Switch Branch: </label>
            <select id="branchSelect">
"""
        for branch in branches:
            selected = 'selected' if branch == self.current_branch else ''
            html += f'                <option value="{branch}" {selected}>{branch}</option>\n'

        html += f"""            </select>
            <button class="branch-button" onclick="switchBranch()">Switch</button>
        </div>

        <div class="info">
            <strong>Server running on:</strong> http://localhost:{self.port}<br>
            <strong>Games found:</strong> {len(html_files)}<br>
            <strong>Available branches:</strong> {len(branches)}
        </div>

        <div class="games-grid">
"""
        for file in html_files:
            game_name = file.replace('.html', '').replace('-', ' ').title()
            html += f"""            <div class="game-card">
                <div class="game-icon">🎮</div>
                <a href="{file}" target="_blank">{game_name}</a>
            </div>
"""
        html += """        </div>

        <div class="warning">
            <strong>Note:</strong> Switching branches will reload this page with the games from the new branch.
            Make sure to save any game progress before switching!
        </div>
    </div>

    <script>
        function switchBranch() {
            const select = document.getElementById('branchSelect');
            const branch = select.value;

            fetch('/switch-branch', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({branch: branch})
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    setTimeout(() => {
                        window.location.reload();
                    }, 1000);
                } else {
                    alert('Failed to switch branch: ' + data.error);
                }
            })
            .catch((error) => {
                alert('Error: ' + error);
            });
        }
    </script>
</body>
</html>"""
        return html

    def run_server(self):
        """Run the local web server"""
        class CustomHandler(http.server.SimpleHTTPRequestHandler):
            browser_instance = self

            def do_GET(self):
                if self.path == '/':
                    # Serve the index page
                    html = self.browser_instance.generate_index()
                    self.send_response(200)
                    self.send_header('Content-type', 'text/html')
                    self.end_headers()
                    self.wfile.write(html.encode())
                else:
                    # Serve static files
                    super().do_GET()

            def do_POST(self):
                if self.path == '/switch-branch':
                    content_length = int(self.headers['Content-Length'])
                    post_data = self.rfile.read(content_length)
                    data = json.loads(post_data)

                    success = self.browser_instance.checkout_branch(data['branch'])

                    self.send_response(200)
                    self.send_header('Content-type', 'application/json')
                    self.end_headers()
                    response = json.dumps({'success': success})
                    self.wfile.write(response.encode())

        CustomHandler.browser_instance = self

        with socketserver.TCPServer(("", self.port), CustomHandler) as httpd:
            print(f"🎮 Tetris Browser Server running at http://localhost:{self.port}")
            print(f"📍 Current branch: {self.current_branch}")
            print(f"🎯 Games available: {len(self.get_html_files())}")
            print(f"Press Ctrl+C to stop the server")
            webbrowser.open(f'http://localhost:{self.port}')
            httpd.serve_forever()

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Browse Tetris games across all branches')
    parser.add_argument('--port', type=int, default=8080, help='Port to run server on (default: 8080)')
    args = parser.parse_args()

    browser = TetrisBrowser(port=args.port)
    try:
        browser.run_server()
    except KeyboardInterrupt:
        print("\n👋 Server stopped")
    except Exception as e:
        print(f"Error: {e}")