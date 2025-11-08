#!/bin/bash

echo "🎮 Adding Missing Tetris Worktrees..."
echo "======================================"
echo ""

# Array of missing branches
missing_branches=(
    "claude/implement-tetris-twist-ideas-011CUw1mGEB3QQs1CWJqJRZg"
    "claude/implement-tetris-twist-ideas-011CUw22hkkhM9FEMKgsuAzF"
    "claude/implement-tetris-twist-ideas-011CUw2CD57BT7cuqBafnsgd"
    "claude/implement-tetris-twist-ideas-011CUw3Z6L1fqGks9HcgfNXH"
    "claude/matrix-tetris-twist-ideas-011CUw2oYvwVKMxpA9g9zEU6"
    "claude/tetris-game-versions-011CUw57Zux3pAWYochMYQzr"
    "claude/tetris-variations-p5js-011CUw4txLy4MssDqwoxYSSj"
    "claude/wittgenstein-language-games-011CUux8NdFdScPrbEEfRDVy"
)

echo "Found ${#missing_branches[@]} missing branches to add as worktrees"
echo ""

# Create worktree for each missing branch
for branch in "${missing_branches[@]}"
do
    # Create a simplified folder name
    if [[ $branch == *"implement-tetris-twist-ideas"* ]]; then
        # Extract the unique ID suffix
        suffix=$(echo "$branch" | grep -o '[^-]*$')
        folder_name="twist-ideas-${suffix:0:6}"
    elif [[ $branch == *"matrix-tetris-twist-ideas"* ]]; then
        folder_name="matrix-twist-ideas"
    elif [[ $branch == *"tetris-game-versions"* ]]; then
        folder_name="game-versions"
    elif [[ $branch == *"tetris-variations-p5js-011CUw4txLy4MssDqwoxYSSj"* ]]; then
        folder_name="p5js-variations-2"
    elif [[ $branch == *"wittgenstein-language-games"* ]]; then
        folder_name="wittgenstein-games"
    else
        folder_name=$(echo "$branch" | sed 's/.*\///' | cut -d'-' -f1-3)
    fi

    echo "Adding: $folder_name from branch $branch"

    # Add worktree
    if git worktree add "tetris-branches/$folder_name" "$branch" 2>/dev/null; then
        echo "✅ Created worktree: tetris-branches/$folder_name"
    else
        echo "⚠️  Skipped (may already exist): $folder_name"
    fi
    echo ""
done

echo "======================================"
echo "✅ All missing worktrees processed!"
echo ""
echo "You now have access to ALL branches:"
ls -d tetris-branches/*/ | while IFS= read -r dir; do
    name=$(basename "$dir")
    echo "  📁 $name"
done
echo ""
echo "Total worktrees: $(git worktree list | wc -l)"