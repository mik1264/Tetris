#!/bin/bash

# Setup Git Worktrees for All Tetris Branches
# This allows you to have all branches checked out simultaneously in different folders

echo "🎮 Setting up Tetris Repository Worktrees..."
echo "==========================================="

# Create a main directory for all worktrees
mkdir -p tetris-branches
cd tetris-branches

# Array of branches to check out
branches=(
    "main"
    "opus-tetris-innovations-all-10-twists"
    "claude/tetris-three-frameworks-011CUw5PPScGGo6kfYnkurem"
    "claude/tetris-variations-p5js-011CUw4txLy4MssDqwoxYSSj"
    "claude/tetris-variations-p5js-011CUw4o2WpmKJsvaXYcn7kr"
    "claude/matrix-tetris-twists-011CUw2KNfWfdtSUshMJUDqa"
    "claude/tetris-twist-styling-ideas-011CUw3q1oqv7rEDrBs781dQ"
)

# Setup each branch as a worktree
for branch in "${branches[@]}"
do
    # Create a folder name from the branch name
    folder_name=$(echo "$branch" | sed 's/\//_/g' | sed 's/claude_//' | cut -d'-' -f1-3)

    echo "Setting up: $folder_name from branch $branch"

    # Remove existing worktree if it exists
    git worktree remove --force "../tetris-branches/$folder_name" 2>/dev/null

    # Add new worktree
    git worktree add "../tetris-branches/$folder_name" "$branch"

    echo "✅ Created worktree: tetris-branches/$folder_name"
    echo ""
done

echo "==========================================="
echo "✅ All worktrees set up successfully!"
echo ""
echo "You can now navigate to each branch folder:"
echo ""
for branch in "${branches[@]}"
do
    folder_name=$(echo "$branch" | sed 's/\//_/g' | sed 's/claude_//' | cut -d'-' -f1-3)
    echo "  cd tetris-branches/$folder_name"
done
echo ""
echo "Each folder contains a complete checkout of that branch."
echo "You can open the HTML files directly in your browser!"