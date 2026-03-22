import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_theme.dart';
import 'package:flutter_application_1/styled_body_text.dart';
import 'package:flutter_application_1/styled_button.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugars = 1;

  void increaseStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void increaseSugars() {
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    // BlendMode.multiply tints the image while preserving its detail —
    // works correctly on both opaque and transparent PNGs.
    final assetTint = isDark
        ? EspressoColors.primary   // neon amber  #FFAB30
        : LatteColors.surfaceCard;     // espresso brown #8B5E3C

    final hintColor = isDark
        ? EspressoColors.textHint  // #7A6045
        : LatteColors.textHint;    // #AA8A6E

    return Column(
      children: [
        // ── Strength row ───────────────────────────────
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const StyledBodyText('Strength: '),

              const SizedBox(width: 8),

              for (int i = 0; i < strength; i++)
                Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: Image.asset(
                    'assets/img/coffee_bean.png',
                    width: 25,
                    color: assetTint,
                    colorBlendMode: BlendMode.multiply,
                  ),
                ),

              const Expanded(child: SizedBox()),

              NeumorphicButton(
                onPressed: increaseStrength,
                child: const Text('+'),
              ),
            ],
          ),
        ),

        // ── Sugars row ─────────────────────────────────
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const StyledBodyText('Sugars: '),

            const SizedBox(width: 8),

            if (sugars == 0) ...[
              Expanded(
                child: StyledBodyText(
                  'No sugars...',
                  color: hintColor,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ] else ...[
              for (int i = 0; i < sugars; i++)
                Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: Image.asset(
                    'assets/img/sugar_cube.png',
                    width: 25,
                    color: assetTint,
                    colorBlendMode: BlendMode.multiply,
                  ),
                ),
              const Expanded(child: SizedBox()),
            ],

            NeumorphicButton(
              onPressed: increaseSugars,
              child: const Text('+'),
            ),
          ],
        ),
      ],
    );
  }
}