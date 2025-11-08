#!/bin/bash

# Quick Game Launcher for Tetris Worktrees

echo "🎮 Tetris Worktree Game Launcher"
echo "================================"
echo ""

show_menu() {
    echo "Select games to open:"
    echo ""
    echo "  === QUICK LAUNCHES ==="
    echo "  1) Top 5 Most Innovative"
    echo "  2) Top 5 Most Visual"
    echo "  3) All Framework Demos"
    echo "  4) All Philosophical Games"
    echo ""
    echo "  === BY WORKTREE ==="
    echo "  5) All Opus Innovations (10 games)"
    echo "  6) All Three.js Demos (3 games)"
    echo "  7) All D3.js Demos (3 games)"
    echo "  8) All Chart.js Demos (3 games)"
    echo "  9) Matrix Theme"
    echo ""
    echo "  === SPECIFIC GAMES ==="
    echo "  10) Chronotris (Multi-timeline)"
    echo "  11) Quantris (Quantum mechanics)"
    echo "  12) Diplomtetris (Negotiation)"
    echo "  13) Empathris (Emotion-responsive)"
    echo "  14) Symphtetris (Musical)"
    echo ""
    echo "  0) Exit"
    echo ""
}

open_game() {
    local file=$1
    if [ -f "$file" ]; then
        echo "Opening: $file"
        open "$file" 2>/dev/null || xdg-open "$file" 2>/dev/null || echo "Please open $file manually"
        sleep 0.3
    else
        echo "❌ File not found: $file"
    fi
}

# Main loop
while true; do
    show_menu
    read -p "Enter your choice (0-14): " choice

    case $choice in
        1)
            echo "Opening Top 5 Most Innovative Games..."
            open_game "tetris-branches/opus-tetris-innovations/chronotris.html"
            open_game "tetris-branches/opus-tetris-innovations/quantris.html"
            open_game "tetris-branches/opus-tetris-innovations/diplomtetris.html"
            open_game "tetris-branches/opus-tetris-innovations/empathris.html"
            open_game "tetris-branches/opus-tetris-innovations/narratris.html"
            ;;
        2)
            echo "Opening Top 5 Most Visual Games..."
            open_game "tetris-branches/tetris-variations-p5js/fractal-tetris.html"
            open_game "tetris-branches/tetris-variations-p5js/liquid-tetris.html"
            open_game "tetris-branches/tetris-variations-p5js/particle-tetris.html"
            open_game "tetris-branches/tetris-variations-p5js/glitch-tetris.html"
            open_game "tetris-branches/tetris-variations-p5js/sound-reactive-tetris.html"
            ;;
        3)
            echo "Opening All Framework Demos..."
            for file in tetris-branches/tetris-three-frameworks/*js-*.html; do
                open_game "$file"
            done
            ;;
        4)
            echo "Opening All Philosophical Games..."
            open_game "language-tetris.html"
            open_game "wittgenstein-game.html"
            open_game "builders-apprentice.html"
            open_game "context-shift.html"
            open_game "family-resemblance.html"
            open_game "lost-in-translation.html"
            ;;
        5)
            echo "Opening All Opus Innovations..."
            for game in oblivitris philosophtris quantris chronotris narratris ecotris symphtetris architris empathris diplomtetris; do
                open_game "tetris-branches/opus-tetris-innovations/${game}.html"
            done
            ;;
        6)
            echo "Opening Three.js Demos..."
            for file in tetris-branches/tetris-three-frameworks/threejs-*.html; do
                open_game "$file"
            done
            ;;
        7)
            echo "Opening D3.js Demos..."
            for file in tetris-branches/tetris-three-frameworks/d3-*.html; do
                open_game "$file"
            done
            ;;
        8)
            echo "Opening Chart.js Demos..."
            for file in tetris-branches/tetris-three-frameworks/chartjs-*.html; do
                open_game "$file"
            done
            ;;
        9)
            echo "Opening Matrix Theme..."
            open_game "tetris-branches/matrix-tetris-twists/matrix-tetris.html"
            ;;
        10)
            open_game "tetris-branches/opus-tetris-innovations/chronotris.html"
            ;;
        11)
            open_game "tetris-branches/opus-tetris-innovations/quantris.html"
            ;;
        12)
            open_game "tetris-branches/opus-tetris-innovations/diplomtetris.html"
            ;;
        13)
            open_game "tetris-branches/opus-tetris-innovations/empathris.html"
            ;;
        14)
            open_game "tetris-branches/opus-tetris-innovations/symphtetris.html"
            ;;
        0)
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