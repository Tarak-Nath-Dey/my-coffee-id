# ☕ My Coffee Id

A Flutter app for dialling in your perfect cup — choose your coffee strength and sugar level with a clean, theme-aware UI that switches between two handcrafted themes.

---

## Themes

### 🌤️ Latte — Light Mode
Warm creams, soft whites, and caramel accents. Designed to feel like the first sip of a morning latte.

| Token | Value |
|---|---|
| Background | `#FDF6EE` — warm parchment |
| Primary | `#8B5E3C` — espresso brown |
| Accent | `#D4956A` — caramel |
| Surface | `#F5ECD7` — cream |
| Text | `#3B2314` — dark roast |

### 🌑 Midnight Espresso — Dark Mode
Deep charcoal, neon amber accents, and sleek dark surfaces. Designed for late-night coffee runs.

| Token | Value |
|---|---|
| Background | `#1A1410` — near-black espresso |
| Primary | `#FFAB30` — neon amber |
| Accent | `#FFCC66` — golden crema |
| Surface | `#231C17` — dark roast |
| Text | `#F5ECD7` — warm cream |

---

## Features

- **Dual themes** — full Material 3 `ThemeData` for both Latte and Midnight Espresso, covering every widget surface
- **Theme toggle** — one-tap switch in the AppBar with an `AnimatedSwitcher` rotation transition; follows OS preference by default
- **Neumorphic buttons** — custom `NeumorphicButton` widget with raised/pressed shadow states and a scale animation, built without third-party packages
- **Poppins typography** — 13-style `TextTheme` via Google Fonts with weight, size, and letter-spacing tuned per role
- **Typed color palettes** — `LatteColors` and `EspressoColors` static classes; zero hardcoded hex strings in the UI layer
- **Adaptive assets** — coffee bean and sugar cube images tinted to match the active theme via `BlendMode.multiply`

---

## Project Structure

```
flutter_application_1/
├── lib/
│   ├── main.dart               # App entry point, ThemeMode state + toggle
│   ├── home.dart               # Scaffold, AppBar, section layout
│   ├── coffee_prefs.dart       # Strength & sugar stateful widget
│   ├── app_theme.dart          # ThemeData, color palettes, NeumorphicButton
│   ├── styled_button.dart      # NeumorphicButton + legacy StyledButton wrapper
│   └── styled_body_text.dart   # Theme-aware text widget
├── assets/
│   └── img/
│       ├── coffee_bg.jpg
│       ├── coffee_bean.png
│       └── sugar_cube.png
├── test/
│   └── widget_test.dart
└── pubspec.yaml
```

---

## Getting Started

### Prerequisites

- Flutter SDK `>=3.27.0`
- Dart SDK `>=3.0.0 <4.0.0`

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/flutter_application_1.git
   cd flutter_application_1
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

---

## Dependencies

| Package | Version | Purpose |
|---|---|---|
| `flutter` | SDK | Core framework |
| `google_fonts` | `^6.2.1` | Poppins font for all typography |
| `cupertino_icons` | `^1.0.2` | Icon set |

---

## Theme Architecture

Themes are defined in `app_theme.dart` and wired into `MaterialApp` in `main.dart`:

```dart
MaterialApp(
  theme:     AppTheme.latte,             // ☕ Light
  darkTheme: AppTheme.midnightEspresso,  // 🌑 Dark
  themeMode: ThemeMode.system,           // follows OS by default
  home: const Home(),
)
```

To toggle manually from any widget in the tree:

```dart
CoffeeApp.of(context).toggleTheme();
```

The `NeumorphicButton` widget automatically reads the active brightness and applies the correct shadow pair:

```dart
NeumorphicButton(
  onPressed: () {},
  child: const Text('+'),
)
```

---

## Key Implementation Notes

- **`withOpacity` is deprecated** in Flutter 3.27+. This project uses `.withValues(alpha: x)` throughout.
- **`BlendMode.multiply`** is used for image tinting — it preserves image detail on both opaque and transparent PNGs, unlike `BlendMode.srcIn` which requires full alpha transparency.
- **`StyledButton`** is kept as a thin wrapper around `NeumorphicButton` for backwards compatibility — no call sites need updating.

---

## Screenshots

| Latte (Light) | Midnight Espresso (Dark) |
|---|---|
| *(add screenshot)* | *(add screenshot)* |

---

## License

This project is for personal and educational use.