#!/bin/bash

# Tetris Repository Navigator
# Quick navigation between branches and games

echo "🎮 Tetris Repository Navigator"
echo "=============================="
echo ""

# Function to display menu
show_menu() {
    echo "Select a branch to explore:"
    echo ""
    echo "  1) Main (7 Wittgenstein Games)"
    echo "  2) Opus Innovations (10 Revolutionary Games)"
    echo "  3) Three Frameworks (9 Technical Demos)"
    echo "  4) p5.js Variations A (10 Artistic Games)"
    echo "  5) p5.js Variations B (11 Organized Games)"
    echo "  6) Matrix Theme (1 Themed Game)"
    echo "  7) View Current Games"
    echo "  8) Open All Games in Browser"
    echo "  9) Return to Original Branch"
    echo "  0) Exit"
    echo ""
}

# Store original branch
ORIGINAL_BRANCH=$(git branch --show-current)
echo "Current branch: $ORIGINAL_BRANCH"
echo ""

# Main loop
while true; do
    show_menu
    read -p "Enter your choice (0-9): " choice

    case $choice in
        1)
            echo "Switching to main branch..."
            git stash > /dev/null 2>&1
            git checkout main
            echo "✅ Switched to main branch"
            echo "Games available:"
            ls -1 *.html 2>/dev/null | grep -v MASTER_GALLERY | head -20
            ;;
        2)
            echo "Switching to Opus Innovations branch..."
            git stash > /dev/null 2>&1
            git checkout opus-tetris-innovations-all-10-twists
            echo "✅ Switched to Opus Innovations branch"
            echo "Unique games available:"
            ls -1 {oblivitris,philosophtris,quantris,chronotris,narratris,ecotris,symphtetris,architris,empathris,diplomtetris}.html 2>/dev/null
            ;;
        3)
            echo "Switching to Three Frameworks branch..."
            git stash > /dev/null 2>&1
            git checkout claude/tetris-three-frameworks-011CUw5PPScGGo6kfYnkurem
            echo "✅ Switched to Three Frameworks branch"
            echo "Framework demos available:"
            ls -1 {threejs,d3,chartjs}*.html 2>/dev/null
            ;;
        4)
            echo "Switching to p5.js Variations A branch..."
            git stash > /dev/null 2>&1
            git checkout claude/tetris-variations-p5js-011CUw4txLy4MssDqwoxYSSj
            echo "✅ Switched to p5.js Variations A branch"
            echo "Artistic games available:"
            ls -1 {fractal,glitch,gravity,liquid,mirror,particle,rainbow,sound,spiral,wave}*.html 2>/dev/null
            ;;
        5)
            echo "Switching to p5.js Variations B branch..."
            git stash > /dev/null 2>&1
            git checkout claude/tetris-variations-p5js-011CUw4o2WpmKJsvaXYcn7kr
            echo "✅ Switched to p5.js Variations B branch"
            echo "Organized games available:"
            ls -1 p5-variations/*.html 2>/dev/null
            ;;
        6)
            echo "Switching to Matrix Theme branch..."
            git stash > /dev/null 2>&1
            git checkout claude/matrix-tetris-twists-011CUw2KNfWfdtSUshMJUDqa
            echo "✅ Switched to Matrix Theme branch"
            echo "Matrix game available:"
            ls -1 matrix*.html 2>/dev/null
            ;;
        7)
            echo ""
            echo "Current branch: $(git branch --show-current)"
            echo "HTML games in current directory:"
            echo "--------------------------------"
            ls -1 *.html 2>/dev/null | grep -v MASTER_GALLERY
            if [ -d "p5-variations" ]; then
                echo ""
                echo "Games in p5-variations folder:"
                ls -1 p5-variations/*.html 2>/dev/null
            fi
            ;;
        8)
            echo "Opening all games in current branch..."
            # Open each HTML file in the default browser
            for file in *.html; do
                if [[ -f "$file" && "$file" != "MASTER_GALLERY.html" ]]; then
                    echo "Opening $file..."
                    open "$file" 2>/dev/null || xdg-open "$file" 2>/dev/null || echo "Please open $file manually"
                    sleep 0.5  # Small delay between opens
                fi
            done
            ;;
        9)
            echo "Returning to original branch: $ORIGINAL_BRANCH"
            git checkout "$ORIGINAL_BRANCH"
            echo "✅ Back to $ORIGINAL_BRANCH"
            ;;
        0)
            echo "Returning to original branch and exiting..."
            git checkout "$ORIGINAL_BRANCH" > /dev/null 2>&1
            echo "👋 Goodbye!"
            exit 0
            ;;
        *)
            echo "❌ Invalid choice. Please try again."
            ;;
    esac

    echo ""
    read -p "Press Enter to continue..."
    echo ""
done