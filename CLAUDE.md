# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a collection of educational browser-based games exploring Ludwig Wittgenstein's philosophy of language, particularly concepts from *Philosophical Investigations* (1953). All games are self-contained HTML files with embedded CSS and JavaScript—no build process, dependencies, or server required.

## Core Architecture

### Self-Contained HTML Structure
Each game follows this pattern:
- **HTML**: Single-file structure with inline `<style>` and `<script>` tags
- **CSS**: Embedded in `<style>` blocks, uses modern gradients and animations
- **JavaScript**: Vanilla JS in `<script>` blocks, no frameworks or libraries
- **State Management**: Simple global `gameState` objects tracking progress
- **Canvas**: Tetris games use HTML5 Canvas API for rendering

### Philosophical Framework
All games demonstrate one or more of these Wittgensteinian concepts:
1. **Meaning is Use**: Words gain meaning through practice, not abstract definitions
2. **Language Games**: Different contexts have different rules (forms of life)
3. **Family Resemblance**: Concepts overlap without essential shared features
4. **Context Determines Meaning**: Same words function differently in different practices

### Game Categories

**Tetris Games:**
- `index.html` - Classic Tetris (pure gameplay, no philosophy)
- `language-tetris.html` - Hybrid Tetris with progressive language games that relabel pieces

**Educational Language Games:**
- `context-shift.html` - Ambiguous phrase disambiguation (beginner)
- `builders-apprentice.html` - Wittgenstein's builder example (progressive)
- `family-resemblance.html` - Network concept exploration (intermediate)
- `lost-in-translation.html` - Cross-contextual communication (advanced)
- `wittgenstein-game.html` - Comprehensive multi-world overview

## Key Implementation Patterns

### Language Games Tetris Pattern
The hybrid game (`language-tetris.html`) uses a unique pattern:
```javascript
const LANGUAGE_GAMES = [
    { name: "🏗️ Builder's", words: {'I': 'Beam', 'O': 'Block', ...} },
    { name: "📜 Poet's", words: {'I': 'Longing', 'O': 'Wholeness', ...} },
    // ... same piece shapes, different conceptual labels
];
```
- Level progression (every 10 lines) changes the active language game
- Tetris mechanics remain identical; only piece labels change
- Demonstrates "meaning is use" by showing same object (I-block) as Beam/Longing/Baguette/Linear

### Common Game State Structure
```javascript
gameState = {
    score: 0,
    level: 0, // or currentWorld, currentScenario, etc.
    // game-specific tracking
}
```

### Feedback Pattern
All games provide immediate philosophical feedback:
- Success/error messages explain the Wittgensteinian insight
- Victory screens include philosophical achievements/ranks
- Explanations tie actions back to core concepts

## Testing Games

**To test any game:**
1. Open the HTML file directly in a browser (no server needed)
2. Check responsive behavior at different viewport sizes
3. Verify keyboard controls work (for Tetris variants)
4. Ensure philosophical explanations are clear and accurate
5. Test progression through all levels/stages/worlds

**Common test cases:**
- Language Games Tetris: Play through all 4 language games (40+ lines)
- Builder's Apprentice: Complete all 4 construction stages
- Context Shift: Verify all 8 ambiguous phrases work correctly
- Lost in Translation: Test all 6 cross-cultural scenarios

## Extending the Collection

### Adding New Games
When creating new Wittgensteinian games:

1. **Choose a core concept** to demonstrate (e.g., "private language argument", "rule-following paradox")
2. **Design interactive mechanics** that make the philosophy tangible (not just quiz questions)
3. **Use self-contained HTML** following existing patterns
4. **Provide progressive difficulty** with philosophical insights at each stage
5. **Include explanatory text** linking gameplay to *Philosophical Investigations* sections
6. **Update README.md** with game description and recommended play order

### Styling Consistency
Each game has a unique color scheme but shares:
- Clean, modern gradients for backgrounds
- Card-based UI with rounded corners and shadows
- Smooth transitions and animations for feedback
- Readable serif fonts (Georgia) for philosophical quotes
- Sans-serif fonts (Arial, Verdana) for gameplay

### Philosophical Accuracy
All games reference actual sections from *Philosophical Investigations*:
- §1-64: Builder example and primitive language games
- §65-88: Family resemblance and the concept of "game"
- §19-25: Language games and forms of life
- Keep quotes and insights accurate to Wittgenstein's work

## Recommended Play Order

**Educational Journey:**
1. Context Shift → Builder's Apprentice → Language Games Adventure → Family Resemblance → Lost in Translation

**Fun with Philosophy:**
- Language Games Tetris works as standalone entry point or capstone

## File References
- All games reference Wittgenstein's *Philosophical Investigations* (1953)
- README.md contains full game descriptions and learning objectives
- No external dependencies, APIs, or asset files
