# Games Collection

This repository contains interactive games exploring different concepts:

## 🎮 Classic Tetris
A classic Tetris implementation with smooth controls and scoring.

**Play:** Open `index.html` in your browser

**Controls:**
- Arrow keys to move and rotate
- Space for hard drop
- P to pause

---

## 📊 Framework-Based Tetris Collection

Three diverse Tetris implementations showcasing different HTML/JavaScript visualization frameworks. Each version offers unique visual and technical approaches to the classic game.

### 🎨 D3.js Tetris
**File:** `tetris-d3.html`

Experience Tetris through data-driven DOM manipulation and SVG rendering!

**Technical Features:**
- SVG-based game board with smooth D3.js transitions
- Data binding for dynamic block rendering
- Real-time updates using D3's enter/exit/update pattern
- Declarative approach to visualization

**What's Unique:**
- Each block is a data point rendered using D3's powerful selection API
- Smooth fade-in animations when pieces lock
- Next piece preview rendered as SVG elements
- Demonstrates D3's strength in data-to-visual transformations

**Best For:** Developers interested in data visualization frameworks and SVG manipulation

---

### 🌐 Three.js Tetris
**File:** `tetris-three.html`

Play Tetris in stunning 3D with WebGL-powered graphics!

**Technical Features:**
- Full 3D game board rendered with Three.js
- Real-time lighting with ambient, directional, and point lights
- Interactive camera controls (mouse rotation and zoom)
- Shadow mapping and fog effects
- Animated rotating lights creating dynamic atmosphere

**What's Unique:**
- True 3D blocks with depth and perspective
- Phong shading with emissive materials for glowing blocks
- Camera manipulation: rotate view by dragging, zoom with scroll wheel
- Grid helper and wireframe board outline for spatial reference
- Blocks cast shadows on the game board

**Controls:**
- Mouse: Drag to rotate camera view
- Scroll: Zoom in/out
- A/D or ←/→: Move piece horizontally
- W/S: Rotate piece
- Space: Hard drop

**Best For:** Game developers and 3D graphics enthusiasts

---

### 📈 Chart.js Tetris
**File:** `tetris-chart.html`

Tetris reimagined as live data visualization!

**Technical Features:**
- Game board rendered as a horizontal stacked bar chart
- Real-time score history line chart
- Column heights bar chart showing board distribution
- Multiple coordinated views updating simultaneously

**What's Unique:**
- Each row of the game board is a bar in a stacked chart
- Blocks are represented as chart segments with data-driven colors
- Live performance metrics track your gameplay
- See Tetris through the lens of data analytics
- Three synchronized charts: main board, score trends, and column distribution

**What You Learn:**
- Creative applications of chart libraries beyond traditional graphs
- Chart.js can visualize game state, not just data sets
- Multi-chart dashboards with coordinated updates
- Using visualization tools in unexpected contexts

**Best For:** Data visualization enthusiasts and creative developers

---

## 🎮🧠 Language Games Tetris
**File:** `language-tetris.html`

The perfect fusion: Tetris mechanics meet Wittgenstein's philosophy! Play Tetris while experiencing how the same pieces take on different meanings in different "language games."

**The Concept:**
- Same Tetris pieces, but their conceptual meaning changes with each level
- Four progressive "language games" (contexts/forms of life)
- Each game relabels the pieces to demonstrate how meaning emerges from use

**Language Games Progression:**

1. **🏗️ Builder's Language Game** (Level 1)
   - Pieces as building materials: Beam, Block, Joint, Slab, Pillar
   - "In the builder's practice, these words are commands for action"

2. **📜 Poet's Language Game** (Level 2)
   - Pieces as emotions: Longing, Wholeness, Balance, Flow, Reaching
   - "Poetry uses words metaphorically—same shapes, different meanings"

3. **🏪 Market Language Game** (Level 3)
   - Pieces as marketplace items: Baguette, Apple, Scale, Ribbon, Hook
   - "In commerce, the same forms take on transactional meanings"

4. **🔬 Scientist's Language Game** (Level 4)
   - Pieces as technical terms: Linear, Unit, Junction, Helix, Vector
   - "Scientific language strives for precision, but it's still use in practice"

**Gameplay Features:**
- Progressive difficulty with faster drop speeds
- Bonus philosophical points for understanding contexts
- Track which "word families" you're currently playing with
- Philosophical achievement rankings at game over
- Same Tetris mechanics you know, but with deeper meaning!

**What You Learn:**
- The same Tetris I-block can be a "Beam" (builder), "Longing" (poet), "Baguette" (market), or "Linear" (science)
- Context determines meaning—the piece doesn't change, but its role in different "language games" does
- Words gain meaning through use in specific practices
- Forms of life shape how we interpret and use language

**Difficulty:** Familiar Tetris gameplay with philosophical depth

---

## 🧠 Wittgenstein's Language Games Collection

A series of educational games exploring Ludwig Wittgenstein's revolutionary philosophy of language from *Philosophical Investigations* (1953). Each game demonstrates a different aspect of how meaning emerges from use, context, and social practices.

### Core Philosophical Concepts:
- **Meaning is Use**: Words gain meaning through how they're used in practice, not through abstract definitions
- **Language Games**: Different contexts (forms of life) have different rules and conventions
- **Forms of Life**: Language is embedded in social practices and shared activities
- **Family Resemblance**: Concepts form networks of overlapping similarities, not strict hierarchies

---

### 🎯 Context Shift
**File:** `context-shift.html`

Discover how the same phrase means completely different things depending on context.

**Gameplay:**
- Receive ambiguous phrases like "Can you pass?" or "That's a strike!"
- Determine which context (language game) you're in
- Choose the correct action from multiple possibilities
- Soccer game, card game, exam, hallway—same words, different meanings!

**What You Learn:**
- Context disambiguates meaning
- Words don't have fixed, eternal meanings
- Understanding requires knowing which "game" is being played

**Difficulty:** Beginner-friendly introduction to language games

---

### 🏗️ The Builder's Apprentice
**File:** `builders-apprentice.html`

Experience Wittgenstein's famous thought experiment: learning language through practice, not definition.

**Gameplay:**
- Start as an apprentice with just 4 words: Block, Pillar, Slab, Beam
- Learn meaning by responding to the builder's gestures and needs
- As construction progresses, vocabulary naturally expands
- New words emerge when new practices require them

**What You Learn:**
- Language acquisition through doing, not memorizing definitions
- Meaning emerges from successful participation in shared activities
- Even primitive language games (4 words!) show how meaning works
- Vocabulary grows organically with practice

**Difficulty:** Progressive learning from simple to complex

---

### 🧩 Family Resemblance
**File:** `family-resemblance.html`

Explore how concepts form networks of overlapping similarities rather than strict definitions.

**Gameplay:**
- Examine different uses of words like "game," "language," and "work"
- Identify which uses share properties (competition, rules, fun, etc.)
- Discover that no single feature is common to ALL uses
- See how meanings overlap like family members' features

**What You Learn:**
- Words don't have "essential" definitions
- Concepts are held together by family resemblances
- Some games have competition, some have rules, some have neither—yet all are games!
- Meaning forms networks, not hierarchies

**Difficulty:** Intermediate pattern recognition

---

### 🌍 Lost in Translation
**File:** `lost-in-translation.html`

Navigate conversations across different "forms of life" where the same words create misunderstandings.

**Gameplay:**
- Witness conversations between people from different contexts
- Scientists vs. Poets, Lawyers vs. Friends, Artists vs. Scientists
- Identify where miscommunication occurs
- Choose responses that bridge different language games

**What You Learn:**
- Different forms of life (scientific, artistic, religious) use words differently
- A scientist's "beauty" differs from a poet's "beauty"
- Misunderstandings arise from assuming everyone plays the same language game
- Understanding requires recognizing and translating between different practices

**Difficulty:** Advanced cross-contextual thinking

---

### 🎓 Language Games: A Wittgensteinian Adventure
**File:** `wittgenstein-game.html`

The comprehensive introduction to language games, featuring four distinct worlds.

**Worlds:**
- 🏗️ **Builder's World** - Meaning through action (Wittgenstein's famous builder example)
- 🏪 **Market World** - How context shifts meaning (bank, apple in different settings)
- 📜 **Poet's World** - Metaphorical and creative language use
- 🔬 **Scientist's World** - Precision within technical language practices

**What You Learn:**
- Complete overview of language game philosophy
- Progressive difficulty across multiple contexts
- Integration of all core concepts
- Philosophical insights after each scenario

**Difficulty:** Comprehensive learning journey

---

## 🎯 Recommended Play Order

**For Educational Journey:**
1. **Context Shift** - Start here to grasp the basic idea
2. **The Builder's Apprentice** - Experience primitive language learning
3. **Language Games Adventure** - Get the comprehensive overview
4. **Family Resemblance** - Understand conceptual networks
5. **Lost in Translation** - Master cross-contextual communication

**For Fun with Philosophy:**
- **Language Games Tetris** - Perfect entry point! Familiar gameplay with philosophical depth
- Or play it after completing the educational games to see concepts applied to Tetris

**For Classic Gaming:**
- **Classic Tetris** - Pure block-stacking fun without philosophy

**For Technical Exploration:**
1. **D3.js Tetris** - Learn data-driven DOM manipulation and SVG
2. **Three.js Tetris** - Explore 3D graphics and WebGL
3. **Chart.js Tetris** - Discover creative uses of charting libraries

**For Framework Comparison:**
- Play all three framework-based versions to compare approaches:
  - D3.js: Declarative, data-driven, SVG-based
  - Three.js: 3D, WebGL, game-oriented
  - Chart.js: Dashboard-style, analytics-focused

---

## 📚 Further Reading

These games are based on Ludwig Wittgenstein's *Philosophical Investigations* (1953), particularly sections:
- §1-64: Builder example and primitive language games
- §65-88: Family resemblance and the concept of "game"
- §19-25: Language games and forms of life
- §243-315: Private language argument and meaning as use

**Key Quote:**
> "For a large class of cases of the employment of the word 'meaning'—though not for all—this word can be explained in this way: the meaning of a word is its use in the language."
> — Wittgenstein, *Philosophical Investigations* §43