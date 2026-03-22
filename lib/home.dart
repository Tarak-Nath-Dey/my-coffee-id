import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_theme.dart';
import 'package:flutter_application_1/coffee_prefs.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/styled_body_text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final headerBg = isDark
        ? EspressoColors.surfaceSheet
        : LatteColors.surfaceSheet;

    final prefsBg = isDark
        ? EspressoColors.surfaceCard
        : LatteColors.surfaceCard;

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Coffee Id'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              tooltip: isDark ? 'Switch to Latte' : 'Switch to Midnight Espresso',
              icon: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (child, anim) => RotationTransition(
                  turns: anim,
                  child: FadeTransition(opacity: anim, child: child),
                ),
                child: Icon(
                  isDark ? Icons.wb_sunny_rounded : Icons.nights_stay_rounded,
                  key: ValueKey(isDark),
                ),
              ),
              onPressed: () => CoffeeApp.of(context).toggleTheme(),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // ── Section header ──────────────────────────
          Container(
            color: headerBg,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            child: const StyledBodyText('How I Like my Coffee'),
          ),

          // ── Preferences panel ───────────────────────
          Container(
            color: prefsBg,
            padding: const EdgeInsets.all(20),
            child: const CoffeePrefs(),
          ),

          // ── Coffee image ────────────────────────────
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'assets/img/coffee_bg.jpg',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomCenter,
                ),
                // .withValues() replaces deprecated .withOpacity()
                DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.center,
                      colors: [
                        prefsBg,
                        prefsBg.withValues(alpha: 0),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}