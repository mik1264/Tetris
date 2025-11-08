#!/bin/bash

echo "🎮 Merging All Tetris Branches into Unified Structure"
echo "====================================================="
echo ""

# Create new branch for the unified version
echo "Creating new unified branch..."
git checkout -b unified-all-games-collection
echo "✅ Created branch: unified-all-games-collection"
echo ""

# Create the organized directory structure
echo "Creating organized directory structure..."
mkdir -p unified/{philosophical-foundation,innovations,frameworks,artistic-p5js,themed,development-history}
mkdir -p unified/innovations/{final-opus,chronological}
mkdir -p unified/frameworks/{threejs,d3js,chartjs,mixed}
mkdir -p unified/artistic-p5js/{collection-1,collection-2}
mkdir -p unified/themed/matrix
mkdir -p unified/development-history/{iteration-1,iteration-2,iteration-3,iteration-4}

echo "✅ Directory structure created"
echo ""

# Function to copy files with conflict resolution
copy_with_prefix() {
    local source_dir=$1
    local dest_dir=$2
    local prefix=$3

    for file in "$source_dir"/*.html; do
        if [ -f "$file" ]; then
            filename=$(basename "$file")
            if [ -n "$prefix" ]; then
                # Add prefix to avoid conflicts
                cp "$file" "$dest_dir/${prefix}_${filename}"
            else
                cp "$file" "$dest_dir/${filename}"
            fi
        fi
    done
}

echo "📁 Processing Philosophical Foundation (main/Wittgenstein)..."
# Copy main branch Wittgenstein games
cp index.html unified/philosophical-foundation/classic-tetris.html 2>/dev/null
cp language-tetris.html unified/philosophical-foundation/ 2>/dev/null
cp wittgenstein-game.html unified/philosophical-foundation/ 2>/dev/null
cp builders-apprentice.html unified/philosophical-foundation/ 2>/dev/null
cp context-shift.html unified/philosophical-foundation/ 2>/dev/null
cp family-resemblance.html unified/philosophical-foundation/ 2>/dev/null
cp lost-in-translation.html unified/philosophical-foundation/ 2>/dev/null
# Also from wittgenstein-games worktree
copy_with_prefix "tetris-branches/wittgenstein-games" "unified/philosophical-foundation" ""
echo "  ✓ Philosophical games copied"

echo "📁 Processing Final Innovations (opus branch)..."
# Copy the 10 final innovative games
for game in oblivitris philosophtris quantris chronotris narratris ecotris symphtetris architris empathris diplomtetris; do
    if [ -f "tetris-branches/opus-tetris-innovations/${game}.html" ]; then
        cp "tetris-branches/opus-tetris-innovations/${game}.html" "unified/innovations/final-opus/"
    fi
done
echo "  ✓ Final innovations copied"

echo "📁 Processing Development History..."
# Copy different iterations of the twist ideas
copy_with_prefix "tetris-branches/twist-ideas-011CUw" "unified/development-history/iteration-1" "v1"
copy_with_prefix "tetris-branches/twist-ideas-22hkkh" "unified/development-history/iteration-2" "v2"
copy_with_prefix "tetris-branches/twist-ideas-2CD57B" "unified/development-history/iteration-3" "v3"
copy_with_prefix "tetris-branches/twist-ideas-3Z6L1f" "unified/development-history/iteration-4" "v4"
echo "  ✓ Development iterations copied"

echo "📁 Processing Framework Demonstrations..."
# Three.js demos
for file in tetris-branches/tetris-three-frameworks/threejs-*.html; do
    if [ -f "$file" ]; then
        cp "$file" "unified/frameworks/threejs/"
    fi
done

# D3.js demos
for file in tetris-branches/tetris-three-frameworks/d3-*.html; do
    if [ -f "$file" ]; then
        cp "$file" "unified/frameworks/d3js/"
    fi
done

# Chart.js demos
for file in tetris-branches/tetris-three-frameworks/chartjs-*.html; do
    if [ -f "$file" ]; then
        cp "$file" "unified/frameworks/chartjs/"
    fi
done

# Earlier framework versions
copy_with_prefix "tetris-branches/game-versions" "unified/frameworks/mixed" "early"
echo "  ✓ Framework demos copied"

echo "📁 Processing Artistic p5.js Collections..."
# Collection 1 - organized with subfolder
if [ -d "tetris-branches/tetris-variations-p5js/p5-variations" ]; then
    cp -r tetris-branches/tetris-variations-p5js/p5-variations/* unified/artistic-p5js/collection-1/ 2>/dev/null
else
    copy_with_prefix "tetris-branches/tetris-variations-p5js" "unified/artistic-p5js/collection-1" ""
fi

# Collection 2 - alternative p5.js
copy_with_prefix "tetris-branches/p5js-variations-2" "unified/artistic-p5js/collection-2" ""
echo "  ✓ p5.js collections copied"

echo "📁 Processing Themed Games..."
# Matrix themed games
cp tetris-branches/matrix-tetris-twists/matrix*.html unified/themed/matrix/ 2>/dev/null
copy_with_prefix "tetris-branches/matrix-twist-ideas" "unified/themed/matrix" "alt"
echo "  ✓ Themed games copied"

echo "📁 Processing Additional Games..."
# Copy any games from twist-styling
copy_with_prefix "tetris-branches/tetris-twist-styling" "unified/innovations/chronological" "styled"
echo "  ✓ Additional games copied"

# Remove any empty directories
find unified -type d -empty -delete

# Count total games
total_games=$(find unified -name "*.html" -type f | wc -l)
echo ""
echo "====================================================="
echo "✅ Merge Complete!"
echo "📊 Total games merged: $total_games"
echo ""
echo "📁 Unified Structure Created:"
echo "unified/"
echo "├── philosophical-foundation/  (Wittgenstein language games)"
echo "├── innovations/"
echo "│   ├── final-opus/           (10 final innovative games)"
echo "│   └── chronological/        (Additional versions)"
echo "├── frameworks/"
echo "│   ├── threejs/              (Three.js 3D demos)"
echo "│   ├── d3js/                 (D3.js visualizations)"
echo "│   ├── chartjs/              (Chart.js demos)"
echo "│   └── mixed/                (Early framework tests)"
echo "├── artistic-p5js/"
echo "│   ├── collection-1/         (First p5.js set)"
echo "│   └── collection-2/         (Second p5.js set)"
echo "├── themed/"
echo "│   └── matrix/               (Matrix movie themed)"
echo "└── development-history/"
echo "    ├── iteration-1/          (First development pass)"
echo "    ├── iteration-2/          (Second iteration)"
echo "    ├── iteration-3/          (Third iteration)"
echo "    └── iteration-4/          (Fourth iteration)"
echo ""
echo "Next step: Creating comprehensive index..."