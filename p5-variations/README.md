# p5.js Tetris Variations

A collection of 10 creative experiments that reimagine Tetris mechanics using p5.js. Each variation introduces unique gameplay mechanics, visual effects, or conceptual frameworks.

## 🎮 Quick Start

Open `index.html` in your browser to browse all variations, or open any individual game directly.

All games are **self-contained HTML files** - no build process, no dependencies to install!

---

## 🎨 The Variations

### ⚛️ 1. Quantris
**File:** `quantris.html`

Pieces exist in quantum superposition until placed.

**Mechanics:**
- All 7 Tetris shapes are shown simultaneously with transparency based on probability
- Press ↑ to "rotate" (shifts probability toward I-piece)
- Predict which shape will collapse by pressing 1-7 (I, O, T, S, Z, J, L)
- Correct predictions build a multiplier (up to 10×)
- Wrong predictions reduce your multiplier

**Controls:**
- ← → Move | ↑ Rotate (changes probability) | ↓ Soft Drop | Space: Hard Drop
- 1-7: Predict shape | P: Pause | R: Restart

**Strategy:** Watch the probability bars carefully. Multiple rotations significantly increase I-piece chances. Wait until probabilities favor your prediction!

---

### 🧠 2. Oblivitris
**File:** `oblivitris.html`

Memory-based Tetris where pieces fade from visibility.

**Mechanics:**
- Pieces are fully visible for 3 seconds after placement
- Then fade to invisible over the next 7 seconds
- 3 limited sonar pulses reveal all blocks temporarily (1.5 seconds)
- Ghost outlines show your last 5 placements
- Bonus multiplier for not using sonar

**Controls:**
- ← → Move | ↑ Rotate | ↓ Soft Drop | Space: Hard Drop
- S: Sonar Pulse | R: Restart

**Strategy:** Build systematically from bottom-up. Visualize the invisible board. Save sonar for emergencies. Perfect memory = maximum score!

---

### 🌊 3. Wave Tetris
**File:** `wave-tetris.html`

The board warps and waves with dynamic distortion effects.

**Mechanics:**
- 5 wave distortion modes: Horizontal, Vertical, Circular, Spiral, Chaos
- Wave intensity increases with each level
- Press W to manually change wave types
- All standard Tetris rules apply, but visual distortion makes placement challenging

**Controls:**
- ← → Move | ↑ Rotate | ↓ Soft Drop | Space: Hard Drop
- W: Change Wave Type | R: Restart

**Strategy:** Focus on the grid lines, not just the blocks. At high levels, circular and spiral modes are most disorienting. Muscle memory helps!

---

### 💥 4. Particle Tetris
**File:** `particle-tetris.html`

Explosive particle effects when clearing lines.

**Mechanics:**
- Each cleared line explodes into 80+ colorful particles
- Particles have physics (gravity, velocity, fading)
- Combo system: consecutive clears build a multiplier (up to 10×)
- Missing a clear resets combo to 1×

**Controls:**
- ← → Move | ↑ Rotate | ↓ Soft Drop | Space: Hard Drop | R: Restart

**Strategy:** Build up to multi-line clears (Tetris = 4 lines) for spectacular particle shows and huge score bonuses!

---

### ⬇️ 5. Gravity Shift
**File:** `gravity-shift.html`

Gravity changes direction periodically.

**Mechanics:**
- 4 gravity directions: DOWN ⬇️, RIGHT ➡️, UP ⬆️, LEFT ⬅️
- Canvas rotates to match gravity direction
- Gravity auto-shifts every 20 seconds
- Press G to manually trigger a shift
- All existing blocks fall in the new gravity direction

**Controls:**
- WASD: Move in current gravity | Q/E: Rotate | G: Shift Gravity | R: Restart

**Strategy:** Anticipate gravity shifts! Build structures that work in multiple orientations. When gravity shifts, existing blocks compact.

---

### 🎨 6. Color Blend Tetris
**File:** `color-blend.html`

Primary colors mix to create secondary colors.

**Mechanics:**
- Pieces come in 3 primary colors: Red, Blue, Yellow
- Adjacent colors mix: Red+Blue=Purple, Red+Yellow=Orange, Blue+Yellow=Green
- Match 3+ same colors (using flood-fill) to clear
- Board compacts vertically after clears

**Controls:**
- ← → Move | ↑ Rotate | ↓ Soft Drop | Space: Hard Drop | R: Restart

**Strategy:** Plan color placement to create large connected regions. Mixed colors (purple, orange, green) can create bigger scoring opportunities!

---

### 🌿 7. Ecotris
**File:** `ecotris.html`

Ecosystem simulation with food chain mechanics.

**Mechanics:**
- 4 species: 🌱 Plants, 🦌 Herbivores, 🦁 Predators, 🍄 Decomposers
- Ecological relationships:
  - Predators need Herbivores to survive
  - Herbivores benefit from Plants
  - Decomposers help Plants
  - Balance all species for bonuses
- Imbalanced ecosystems reduce scores
- Species can go extinct if neglected!

**Controls:**
- ← → Move | ↑ Rotate | ↓ Soft Drop | Space: Hard Drop | R: Restart

**Strategy:** Maintain biodiversity! Too many predators = starvation. Keep all 4 species alive for "Perfect Balance" bonuses.

---

### 🎵 8. Symphtetris
**File:** `symphtetris.html`

Musical composition through Tetris gameplay.

**Mechanics:**
- 7 instruments (one per piece type): Piano, Drums, Guitar, Brass, Violin, Sax, Synth
- Horizontal position = pitch (left = low, right = high, mapped to C3-C5)
- Placement triggers musical notes using p5.sound oscillator
- Harmonic line clears (variety of instruments) earn bonuses
- Movement and rotation also play notes

**Controls:**
- ← → Move (plays notes!) | ↑ Rotate | ↓ Soft Drop | Space: Hard Drop | R: Restart

**Strategy:** Compose while you play! Vary piece placement horizontally for melodic variety. Harmonic clears (6+ different instruments) = 2× bonus!

---

### ⏰ 9. Chronotris
**File:** `chronotris.html`

Manage 3 parallel timelines simultaneously.

**Mechanics:**
- 3 boards: ⏪ PAST, ⏸️ PRESENT, ⏩ FUTURE
- Press 1/2/3 to switch active timeline
- Temporal cascade: Clearing in PAST also clears in PRESENT
- FUTURE shows ghostly preview blocks (5 random hints)
- Only the active timeline receives falling pieces

**Controls:**
- ← → Move | ↑ Rotate | ↓ Soft Drop | Space: Hard Drop
- 1/2/3: Switch Timeline | R: Restart

**Strategy:** Use PAST to cascade clears to PRESENT. Watch FUTURE for placement hints. Balance all 3 timelines to prevent any one from filling up!

---

### 🎈 10. Elastic Tetris
**File:** `elastic-tetris.html`

Physics-based bouncing pieces.

**Mechanics:**
- Pieces bounce on impact (elastic collision)
- Each bounce reduces velocity by 30% (damping)
- Minimum bounce threshold: pieces settle when velocity < 2
- Squash and stretch animation based on fall speed
- Bonus points for:
  - Soft landings (< 3 bounces)
  - Bounce chains (4+ bounces = 10× bounce count)

**Controls:**
- ← → Move | ↑ Rotate | ↓ Accelerate | Space: Fast Drop | R: Restart

**Strategy:** Let pieces bounce naturally for bonus points! Chain 5+ bounces for maximum scoring. Soft landings earn you combo points.

---

## 🛠️ Technical Details

**Built with:**
- p5.js 1.7.0 (loaded from CDN)
- Vanilla JavaScript (no frameworks)
- HTML5 Canvas for rendering
- p5.sound.js for Symphtetris audio

**Browser Compatibility:**
- Chrome/Edge: ✅ Full support
- Firefox: ✅ Full support
- Safari: ✅ Full support (Symphtetris may require user interaction for audio)

**Performance:**
- All games run at 60 FPS on modern hardware
- Particle Tetris is the most GPU-intensive (hundreds of particles)

---

## 🎯 Recommended Play Order

**For Visual Impact:**
1. Particle Tetris
2. Wave Tetris
3. Elastic Tetris

**For Mind-Bending Gameplay:**
1. Quantris
2. Chronotris
3. Oblivitris

**For Unique Concepts:**
1. Symphtetris
2. Ecotris
3. Color Blend

**For Physics Fun:**
1. Elastic Tetris
2. Gravity Shift
3. Wave Tetris

---

## 🎨 Design Philosophy

Each variation was designed to explore a specific concept:

- **Quantris** → Probability and uncertainty
- **Oblivitris** → Memory and perception
- **Wave Tetris** → Visual distortion and adaptation
- **Particle Tetris** → Satisfying visual feedback
- **Gravity Shift** → Spatial reasoning in changing conditions
- **Color Blend** → Color theory and emergent complexity
- **Ecotris** → System balance and relationships
- **Symphtetris** → Synesthesia (visual → audio)
- **Chronotris** → Multi-tasking and time management
- **Elastic Tetris** → Physics and feel

---

## 📝 Credits

Created as part of the Tetris Variations Collection.

Inspired by:
- Classic Tetris (1984)
- p5.js creative coding framework
- Quantum mechanics, ecosystem theory, and music composition

---

## 🔗 Links

- **Main Repository:** [Tetris Collection](../)
- **Wittgenstein's Language Games:** [Philosophical Games](../)
- **Classic Tetris:** [index.html](../index.html)

---

**Enjoy exploring these creative twists on a classic!** 🎮✨
