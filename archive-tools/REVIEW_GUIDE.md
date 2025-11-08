# 🎮 Tetris Repository - Complete Review Guide

This guide provides multiple methods to review all 40+ Tetris game variants across 13 branches in this repository.

## Quick Start Options

### Option 1: Master Gallery Page (Easiest)
**Best for:** Quick overview of all games with descriptions

1. Open `MASTER_GALLERY.html` in your browser:
   ```bash
   open MASTER_GALLERY.html
   ```

2. This page shows:
   - All games across all branches
   - Descriptions and technologies used
   - Branch switching instructions
   - Filtering by category (Philosophical, Innovative, Visual, Framework)

**Note:** You'll need to switch branches manually to play games from different branches.

---

### Option 2: Interactive Branch Navigator (Recommended)
**Best for:** Easy branch switching with game preview

1. Run the navigator script:
   ```bash
   ./tetris-navigator.sh
   ```

2. Use the menu to:
   - Switch between branches instantly
   - View available games in each branch
   - Open all games in current branch
   - Return to original branch when done

**Features:**
- Numbered menu for easy navigation
- Automatic git stash to preserve changes
- Lists unique games per branch
- One command to open all games

---

### Option 3: Python Web Server (Most Convenient)
**Best for:** Browser-based navigation with live branch switching

1. Start the server:
   ```bash
   python3 tetris-browser.py
   ```
   Or specify a custom port:
   ```bash
   python3 tetris-browser.py --port 3000
   ```

2. Your browser will open automatically to `http://localhost:8080`

3. Features:
   - Switch branches from the web interface
   - Click any game to play
   - No manual git commands needed
   - Automatically serves all HTML files

---

### Option 4: Git Worktree Setup (Advanced)
**Best for:** Having all branches checked out simultaneously

1. Run the setup script:
   ```bash
   ./setup-worktrees.sh
   ```

2. This creates a `tetris-branches/` folder with subfolders for each branch

3. Navigate to any branch folder:
   ```bash
   cd tetris-branches/main
   cd tetris-branches/opus-tetris-innovations
   cd tetris-branches/tetris-three-frameworks
   # etc...
   ```

4. Open games directly from each folder - no branch switching needed!

---

## Manual Branch Navigation

### View All Branches
```bash
git branch -a
```

### Switch to Specific Branches

**Main Branch** (7 Wittgenstein games):
```bash
git checkout main
```

**Opus Innovations** (10 unique new games):
```bash
git checkout opus-tetris-innovations-all-10-twists
```

**Framework Demos** (9 Three.js/D3.js/Chart.js games):
```bash
git checkout claude/tetris-three-frameworks-011CUw5PPScGGo6kfYnkurem
```

**p5.js Creative** (10 artistic variations):
```bash
git checkout claude/tetris-variations-p5js-011CUw4txLy4MssDqwoxYSSj
```

**Matrix Theme** (1 movie-themed game):
```bash
git checkout claude/matrix-tetris-twists-011CUw2KNfWfdtSUshMJUDqa
```

### After Switching Branches

List available games:
```bash
ls -la *.html
```

Open a specific game:
```bash
open oblivitris.html  # macOS
xdg-open oblivitris.html  # Linux
start oblivitris.html  # Windows
```

Open all games at once:
```bash
for file in *.html; do open "$file"; done  # macOS
```

---

## Game Categories Overview

### 🧠 Philosophical (Wittgenstein Series)
- **Branch:** main
- **Count:** 7 games
- **Theme:** Language philosophy and meaning

### 🚀 Innovative Gameplay (Opus Branch)
- **Branch:** opus-tetris-innovations-all-10-twists
- **Count:** 10 games
- **Unique Features:**
  - Chronotris: Multiple timelines
  - Quantris: Quantum mechanics
  - Diplomtetris: Negotiation with AI
  - Empathris: Emotion detection
  - And 6 more revolutionary concepts

### 🎨 Visual/Artistic (p5.js Branches)
- **Branches:** 2 p5.js variation branches
- **Count:** 20+ games
- **Features:** Fractals, glitch art, particles, audio-reactive

### 🔧 Technical Demos (Framework Branch)
- **Branch:** tetris-three-frameworks
- **Count:** 9 games
- **Technologies:** Three.js (3D), D3.js, Chart.js

### 🎬 Themed (Matrix Branch)
- **Branch:** matrix-tetris-twists
- **Count:** 1 game
- **Theme:** Complete Matrix movie aesthetic

---

## Quick Testing Checklist

### Essential Games to Try:
- [ ] **Classic Tetris** (main) - The foundation
- [ ] **Language Tetris** (main) - Philosophical twist
- [ ] **Chronotris** (opus) - Multi-timeline innovation
- [ ] **Quantris** (opus) - Quantum superposition
- [ ] **Diplomtetris** (opus) - Negotiation mechanics
- [ ] **Three.js Particles** (frameworks) - 3D effects
- [ ] **Fractal Tetris** (p5.js) - Mathematical beauty
- [ ] **Matrix Tetris** (matrix) - Movie theme

### By Innovation Level:
1. **Most Innovative:** Chronotris, Quantris, Diplomtetris
2. **Most Visual:** Fractal, Particle, Liquid Tetris
3. **Most Educational:** Wittgenstein series, Philosophtris
4. **Most Technical:** Three.js demos, Physics simulations

---

## Troubleshooting

### Git Issues

**Uncommitted changes blocking checkout:**
```bash
git stash
git checkout [branch-name]
git stash pop  # After returning to original branch
```

**Branch doesn't exist locally:**
```bash
git fetch --all
git checkout [branch-name]
```

### Browser Issues

**Games not loading:**
- Ensure you're opening HTML files from file:// protocol
- Some games may need a local server for full features
- Try different browsers (Chrome/Firefox/Safari)

**Audio not working:**
- Click on the game first (browsers require user interaction for audio)
- Check browser permissions for audio

### Python Server Issues

**Port already in use:**
```bash
python3 tetris-browser.py --port 3001  # Try different port
```

**Permission denied:**
```bash
chmod +x tetris-browser.py
```

---

## Tips for Best Experience

1. **Use Chrome or Firefox** for best compatibility
2. **Have speakers/headphones ready** for musical games (Symphtetris)
3. **Read the controls** - each game has unique features
4. **Try the philosophical games** to understand the repository's foundation
5. **Explore the innovative mechanics** in the opus branch
6. **Compare framework implementations** to see different approaches

---

## Repository Statistics

- **Total Branches:** 13
- **Total Unique Games:** 40+
- **Technologies Used:** Vanilla JS, p5.js, Three.js, D3.js, Chart.js
- **Lines of Code:** ~9,100 in opus branch alone
- **File Sizes:** 15-35 KB per game (self-contained)
- **No Dependencies:** All games run standalone

---

## Contact & Contributions

Repository: https://github.com/mik1264/Tetris

Feel free to:
- Fork and add your own variations
- Report issues
- Suggest new game mechanics
- Contribute to existing games

---

*Happy Gaming! 🎮*