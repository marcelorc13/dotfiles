# Keyboard Layout & Layers

This keyboard uses a split layout with 6 layers. Layers 1 and 2 are accessed via dedicated thumb keys (`FN_MO13` and `FN_MO23`), with layer 3 activated when both are held simultaneously.

---

## Layer 0 — Base (QWERTY)

Standard QWERTY layout with modifiers on the outer columns and thumb cluster.

```
┌───────┬───┬───┬───┬───┬───┐     ┌───┬───┬───┬───┬───┬───────┐
│  Tab  │ Q │ W │ E │ R │ T │     │ Y │ U │ I │ O │ P │ Bspc  │
├───────┼───┼───┼───┼───┼───┤     ├───┼───┼───┼───┼───┼───────┤
│ Shift │ A │ S │ D │ F │ G │     │ H │ J │ K │ L │ ; │  Esc  │
├───────┼───┼───┼───┼───┼───┤     ├───┼───┼───┼───┼───┼───────┤
│ Ctrl  │ Z │ X │ C │ V │ B │     │ N │ M │ , │ . │ / │   '   │
└───────┴───┴───┴───┴───┴───┘     └───┴───┴───┴───┴───┴───────┘
              ┌─────┬───────┬─────┐   ┌─────┬───────┬──────┐
              │ Opt │FN_MO13│ Ent │   │ Spc │FN_MO23│  Cmd │
              └─────┴───────┴─────┘   └─────┴───────┴──────┘
```

**Thumb cluster:**
- Left: `Option` · `FN_MO13` (hold → Layer 1) · `Enter`
- Right: `Space` · `FN_MO23` (hold → Layer 2) · `Cmd`

**Tap Dance:** `/` single-tap = `/`, double-tap = `;`

---

## Layer 1 — Numbers & Navigation

Accessed by holding `FN_MO13` (left thumb).

```
┌───────┬───┬───┬───┬───┬───┐     ┌───┬───┬───┬───┬───┬───────┐
│  Tab  │ 1 │ 2 │ 3 │ 4 │ 5 │     │ 6 │ 7 │ 8 │ 9 │ 0 │ Bspc  │
├───────┼───┼───┼───┼───┼───┤     ├───┼───┼───┼───┼───┼───────┤
│ Shift │   │   │   │   │   │     │ ← │ ↓ │ ↑ │ → │   │       │
├───────┼───┼───┼───┼───┼───┤     ├───┼───┼───┼───┼───┼───────┤
│ Ctrl  │   │   │   │   │   │     │   │   │   │   │   │       │
└───────┴───┴───┴───┴───┴───┘     └───┴───┴───┴───┴───┴───────┘
              ┌─────┬───────┬─────┐   ┌─────┬───────┬──────┐
              │ Opt │ [MO1] │ Ent │   │ Spc │       │  Cmd │
              └─────┴───────┴─────┘   └─────┴───────┴──────┘
```

- Numbers `1–0` across the top rows
- Arrow keys on the right home row (`H` `J` `K` `L` positions)

---

## Layer 2 — Symbols

Accessed by holding `FN_MO23` (right thumb).

```
┌───────┬───┬───┬───┬───┬───┐     ┌───┬───┬───┬───┬───┬───────┐
│  Tab  │ ! │ @ │ # │ $ │ % │     │ ^ │ & │ * │ ( │ ) │ Bspc  │
├───────┼───┼───┼───┼───┼───┤     ├───┼───┼───┼───┼───┼───────┤
│ Shift │   │ ^ │ ' │ ~ │Cap│     │ - │ = │ [ │ ] │ \ │   `   │
├───────┼───┼───┼───┼───┼───┤     ├───┼───┼───┼───┼───┼───────┤
│ Ctrl  │   │   │ ≤ │   │   │     │ _ │ + │ { │ } │ | │   ~   │
└───────┴───┴───┴───┴───┴───┘     └───┴───┴───┴───┴───┴───────┘
              ┌─────┬───────┬─────┐   ┌─────┬───────┬──────┐
              │ Opt │       │ Ent │   │ Spc │ [MO2] │  Cmd │
              └─────┴───────┴─────┘   └─────┴───────┴──────┘
```

- Top row: shifted number symbols `! @ # $ % ^ & * ( )`
- Home row: common punctuation and `Caps Lock`
- Bottom row: shifted bracket/symbol variants
- `C` position: `≤` (RAlt+`,`)

---

## Layer 3 — Function, Media & Mouse

Accessed by holding both `FN_MO13` + `FN_MO23` simultaneously.

```
┌───────┬────┬────┬────┬────┬────┐     ┌────┬────┬────┬────┬─────┬──────┐
│       │ F1 │ F2 │ F3 │ F4 │ F5 │     │ F6 │ F7 │ F8 │ F9 │ F10 │ Del  │
├───────┼────┼────┼────┼────┼────┤     ├────┼────┼────┼────┼─────┼──────┤
│ Shift │VAI │HUI │Vol+│PrSc│    │     │Ms← │Ms↓ │Ms↑ │Ms→ │ Btn1│ Btn2 │
├───────┼────┼────┼────┼────┼────┤     ├────┼────┼────┼────┼─────┼──────┤
│ Ctrl  │VAD │HUD │Vol-│    │    │     │    │Wh↓ │Wh↑ │    │ F11 │ F12  │
└───────┴────┴────┴────┴────┴────┘     └────┴────┴────┴────┴─────┴──────┘
              ┌─────┬────────┬─────┐   ┌─────┬────────┬──────┐
              │ Opt │ [MO13] │ Ent │   │ Spc │ [MO23] │  Cmd │
              └─────┴────────┴─────┘   └─────┴────────┴──────┘
```

- **F-keys:** F1–F12 across both halves
- **RGB:** `VAI/VAD` (brightness), `HUI/HUD` (hue) on left home/bottom rows
- **Media:** Volume up/down, Print Screen
- **Mouse:** Movement (`Ms↑↓←→`), scroll wheel (`Wh↑↓`), left/right click (`Btn1/Btn2`)

