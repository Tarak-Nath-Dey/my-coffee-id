// ============================================================
//  app_theme.dart
//  Two complete ThemeData configurations for the Coffee App
//
//  ☕  LIGHT: "Latte"            — warm creams, soft whites, caramel
//  🌑  DARK:  "Midnight Espresso" — deep charcoal, neon amber, sleek
//
//  Dependencies (add to pubspec.yaml):
//    google_fonts: ^6.2.1
// ============================================================

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ─────────────────────────────────────────────
//  COLOR PALETTES
// ─────────────────────────────────────────────

class LatteColors {
  static const Color scaffoldBg    = Color(0xFFFDF6EE);
  static const Color surfaceCard   = Color(0xFFF5ECD7);
  static const Color surfaceSheet  = Color(0xFFEDE0C8);
  static const Color primary       = Color(0xFF8B5E3C);
  static const Color primaryLight  = Color(0xFFB07D4E);
  static const Color accent        = Color(0xFFD4956A);
  static const Color accentLight   = Color(0xFFEDC99A);
  static const Color textPrimary   = Color(0xFF3B2314);
  static const Color textSecondary = Color(0xFF6B4B2E);
  static const Color textHint      = Color(0xFFAA8A6E);
  static const Color divider       = Color(0xFFDEC9AA);
  static const Color error         = Color(0xFFBF4040);
  static const Color neumorphLight  = Color(0xFFFFFFFF);
  static const Color neumorphShadow = Color(0xFFCBB89A);
}

class EspressoColors {
  static const Color scaffoldBg    = Color(0xFF1A1410);
  static const Color surfaceCard   = Color(0xFF231C17);
  static const Color surfaceSheet  = Color(0xFF2E2420);
  static const Color primary       = Color(0xFFFFAB30);
  static const Color primaryDark   = Color(0xFFE08A00);
  static const Color accent        = Color(0xFFFFCC66);
  static const Color accentMuted   = Color(0xFF7A5420);
  static const Color textPrimary   = Color(0xFFF5ECD7);
  static const Color textSecondary = Color(0xFFCCAA77);
  static const Color textHint      = Color(0xFF7A6045);
  static const Color divider       = Color(0xFF3D2E20);
  static const Color error         = Color(0xFFFF6B6B);
  static const Color neumorphLight  = Color(0xFF2D2420);
  static const Color neumorphShadow = Color(0xFF0E0A08);
}

// ─────────────────────────────────────────────
//  TYPOGRAPHY
// ─────────────────────────────────────────────

class AppTypography {
  static TextTheme latteTextTheme() {
    return GoogleFonts.poppinsTextTheme().copyWith(
      displayLarge:   GoogleFonts.poppins(fontSize: 57, fontWeight: FontWeight.w300, color: LatteColors.textPrimary,   letterSpacing: -0.5),
      displayMedium:  GoogleFonts.poppins(fontSize: 45, fontWeight: FontWeight.w300, color: LatteColors.textPrimary),
      displaySmall:   GoogleFonts.poppins(fontSize: 36, fontWeight: FontWeight.w400, color: LatteColors.textPrimary),
      headlineLarge:  GoogleFonts.poppins(fontSize: 32, fontWeight: FontWeight.w700, color: LatteColors.textPrimary,   letterSpacing: -0.3),
      headlineMedium: GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.w600, color: LatteColors.textPrimary),
      headlineSmall:  GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w600, color: LatteColors.textPrimary),
      titleLarge:     GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w600, color: LatteColors.textPrimary),
      titleMedium:    GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500, color: LatteColors.textPrimary,   letterSpacing: 0.1),
      titleSmall:     GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500, color: LatteColors.textSecondary, letterSpacing: 0.1),
      bodyLarge:      GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: LatteColors.textPrimary,   letterSpacing: 0.15),
      bodyMedium:     GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: LatteColors.textSecondary, letterSpacing: 0.25),
      bodySmall:      GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color: LatteColors.textHint,      letterSpacing: 0.4),
      labelLarge:     GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white,             letterSpacing: 0.5),
      labelMedium:    GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: LatteColors.textSecondary, letterSpacing: 0.5),
      labelSmall:     GoogleFonts.poppins(fontSize: 11, fontWeight: FontWeight.w500, color: LatteColors.textHint,      letterSpacing: 0.5),
    );
  }

  static TextTheme espressoTextTheme() {
    return GoogleFonts.poppinsTextTheme().copyWith(
      displayLarge:   GoogleFonts.poppins(fontSize: 57, fontWeight: FontWeight.w300, color: EspressoColors.textPrimary,   letterSpacing: -0.5),
      displayMedium:  GoogleFonts.poppins(fontSize: 45, fontWeight: FontWeight.w300, color: EspressoColors.textPrimary),
      displaySmall:   GoogleFonts.poppins(fontSize: 36, fontWeight: FontWeight.w400, color: EspressoColors.textPrimary),
      headlineLarge:  GoogleFonts.poppins(fontSize: 32, fontWeight: FontWeight.w700, color: EspressoColors.textPrimary,   letterSpacing: -0.3),
      headlineMedium: GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.w600, color: EspressoColors.textPrimary),
      headlineSmall:  GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w600, color: EspressoColors.accent),
      titleLarge:     GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w600, color: EspressoColors.textPrimary),
      titleMedium:    GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500, color: EspressoColors.textPrimary,   letterSpacing: 0.1),
      titleSmall:     GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500, color: EspressoColors.textSecondary, letterSpacing: 0.1),
      bodyLarge:      GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: EspressoColors.textPrimary,   letterSpacing: 0.15),
      bodyMedium:     GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: EspressoColors.textSecondary, letterSpacing: 0.25),
      bodySmall:      GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color: EspressoColors.textHint,      letterSpacing: 0.4),
      labelLarge:     GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600, color: EspressoColors.scaffoldBg,    letterSpacing: 0.5),
      labelMedium:    GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: EspressoColors.textSecondary, letterSpacing: 0.5),
      labelSmall:     GoogleFonts.poppins(fontSize: 11, fontWeight: FontWeight.w500, color: EspressoColors.textHint,      letterSpacing: 0.5),
    );
  }
}

// ─────────────────────────────────────────────
//  NEUMORPHIC SHADOW HELPERS
//  Fix: .withOpacity() → .withValues(alpha:)
// ─────────────────────────────────────────────

class NeumorphicShadows {
  static List<BoxShadow> latteRaised() => [
    const BoxShadow(color: LatteColors.neumorphLight,  offset: Offset(-4, -4), blurRadius: 10, spreadRadius: 1),
    const BoxShadow(color: LatteColors.neumorphShadow, offset: Offset(4, 4),   blurRadius: 10, spreadRadius: 1),
  ];

  static List<BoxShadow> lattePressed() => [
    BoxShadow(color: LatteColors.neumorphShadow.withValues(alpha: 0.7), offset: const Offset(2, 2),   blurRadius: 5),
    BoxShadow(color: LatteColors.neumorphLight.withValues(alpha: 0.8),  offset: const Offset(-2, -2), blurRadius: 5),
  ];

  static List<BoxShadow> espressoRaised() => [
    const BoxShadow(color: EspressoColors.neumorphLight,  offset: Offset(-4, -4), blurRadius: 10, spreadRadius: 1),
    const BoxShadow(color: EspressoColors.neumorphShadow, offset: Offset(4, 4),   blurRadius: 12, spreadRadius: 1),
  ];

  static List<BoxShadow> espressoPressed() => [
    BoxShadow(color: EspressoColors.neumorphShadow.withValues(alpha: 0.9), offset: const Offset(2, 2),   blurRadius: 6),
    BoxShadow(color: EspressoColors.neumorphLight.withValues(alpha: 0.5),  offset: const Offset(-2, -2), blurRadius: 6),
  ];
}

// ─────────────────────────────────────────────
//  MAIN THEME CLASS
// ─────────────────────────────────────────────

class AppTheme {

  // ══════════════════════════════════════════
  //  ☕  LIGHT — "LATTE"
  // ══════════════════════════════════════════
  static ThemeData get latte {
    const colorScheme = ColorScheme(
      brightness:           Brightness.light,
      primary:              LatteColors.primary,
      onPrimary:            Colors.white,
      primaryContainer:     LatteColors.accentLight,
      onPrimaryContainer:   LatteColors.textPrimary,
      secondary:            LatteColors.accent,
      onSecondary:          Colors.white,
      secondaryContainer:   LatteColors.surfaceSheet,
      onSecondaryContainer: LatteColors.textPrimary,
      tertiary:             LatteColors.primaryLight,
      onTertiary:           Colors.white,
      tertiaryContainer:    LatteColors.accentLight,
      onTertiaryContainer:  LatteColors.textPrimary,
      surface:              LatteColors.surfaceCard,
      onSurface:            LatteColors.textPrimary,
      surfaceContainerHighest: LatteColors.surfaceSheet,
      onSurfaceVariant:     LatteColors.textSecondary,
      error:                LatteColors.error,
      onError:              Colors.white,
      errorContainer:       Color(0xFFFFDAD6),
      onErrorContainer:     LatteColors.error,
      outline:              LatteColors.divider,
      outlineVariant:       LatteColors.accentLight,
      scrim:                Colors.black,
      shadow:               LatteColors.neumorphShadow,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: LatteColors.scaffoldBg,
      textTheme: AppTypography.latteTextTheme(),
      primaryTextTheme: AppTypography.latteTextTheme(),

      appBarTheme: AppBarTheme(
        backgroundColor: LatteColors.primary,
        foregroundColor: Colors.white,
        elevation: 0,
        shadowColor: LatteColors.neumorphShadow,
        centerTitle: true,
        titleTextStyle: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white, letterSpacing: 0.5),
        iconTheme: const IconThemeData(color: Colors.white),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(LatteColors.surfaceCard),
          foregroundColor: WidgetStateProperty.all(LatteColors.primary),
          overlayColor:    WidgetStateProperty.all(LatteColors.accentLight.withValues(alpha: 0.3)),
          elevation:       WidgetStateProperty.all(0),
          padding:         WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 24, vertical: 14)),
          shape:           WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))),
          textStyle:       WidgetStateProperty.all(GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w600)),
          shadowColor:     WidgetStateProperty.all(LatteColors.neumorphShadow),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: LatteColors.primary,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          textStyle: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600, letterSpacing: 0.3),
          elevation: 0,
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: LatteColors.primary,
          side: const BorderSide(color: LatteColors.primary, width: 1.5),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          textStyle: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
        ),
      ),

      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: LatteColors.accent,
        foregroundColor: Colors.white,
        elevation: 4,
        shape: CircleBorder(),
      ),

      // Fix: CardTheme → CardThemeData
      cardTheme: CardThemeData(
        color: LatteColors.surfaceCard,
        elevation: 0,
        shadowColor: LatteColors.neumorphShadow.withValues(alpha: 0.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: LatteColors.surfaceCard,
        hintStyle: GoogleFonts.poppins(color: LatteColors.textHint, fontSize: 14),
        labelStyle: GoogleFonts.poppins(color: LatteColors.textSecondary, fontSize: 14, fontWeight: FontWeight.w500),
        floatingLabelStyle: GoogleFonts.poppins(color: LatteColors.primary, fontSize: 13, fontWeight: FontWeight.w600),
        border:       OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: const BorderSide(color: LatteColors.divider)),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: const BorderSide(color: LatteColors.divider, width: 1.2)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: const BorderSide(color: LatteColors.primary, width: 2)),
        errorBorder:   OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: const BorderSide(color: LatteColors.error,   width: 1.5)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: LatteColors.surfaceCard,
        selectedItemColor: LatteColors.primary,
        unselectedItemColor: LatteColors.textHint,
        selectedLabelStyle: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w600),
        unselectedLabelStyle: GoogleFonts.poppins(fontSize: 12),
        elevation: 8,
        type: BottomNavigationBarType.fixed,
      ),

      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: LatteColors.surfaceCard,
        indicatorColor: LatteColors.accentLight,
        iconTheme: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return const IconThemeData(color: LatteColors.primary, size: 24);
          return const IconThemeData(color: LatteColors.textHint, size: 24);
        }),
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w600, color: LatteColors.primary);
          return GoogleFonts.poppins(fontSize: 12, color: LatteColors.textHint);
        }),
        elevation: 4,
      ),

      chipTheme: ChipThemeData(
        backgroundColor: LatteColors.surfaceSheet,
        selectedColor: LatteColors.primary,
        disabledColor: LatteColors.divider,
        labelStyle: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w500, color: LatteColors.textPrimary),
        secondaryLabelStyle: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        side: const BorderSide(color: LatteColors.divider),
      ),

      sliderTheme: SliderThemeData(
        activeTrackColor: LatteColors.primary,
        inactiveTrackColor: LatteColors.divider,
        thumbColor: LatteColors.primaryLight,
        overlayColor: LatteColors.accentLight.withValues(alpha: 0.3),
        valueIndicatorColor: LatteColors.primary,
        valueIndicatorTextStyle: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w600),
        trackHeight: 4,
      ),

      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((s) => s.contains(WidgetState.selected) ? Colors.white : LatteColors.textHint),
        trackColor: WidgetStateProperty.resolveWith((s) => s.contains(WidgetState.selected) ? LatteColors.primary : LatteColors.divider),
      ),

      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((s) => s.contains(WidgetState.selected) ? LatteColors.primary : Colors.transparent),
        checkColor: WidgetStateProperty.all(Colors.white),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        side: const BorderSide(color: LatteColors.primary, width: 1.5),
      ),

      dividerTheme: const DividerThemeData(color: LatteColors.divider, thickness: 1, space: 1),

      snackBarTheme: SnackBarThemeData(
        backgroundColor: LatteColors.textPrimary,
        contentTextStyle: GoogleFonts.poppins(color: LatteColors.accentLight, fontSize: 14),
        actionTextColor: LatteColors.accent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        behavior: SnackBarBehavior.floating,
      ),

      // Fix: DialogTheme → DialogThemeData
      dialogTheme: DialogThemeData(
        backgroundColor: LatteColors.surfaceCard,
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        titleTextStyle: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w700, color: LatteColors.textPrimary),
        contentTextStyle: GoogleFonts.poppins(fontSize: 14, color: LatteColors.textSecondary),
      ),

      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: LatteColors.surfaceCard,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
        elevation: 12,
        dragHandleColor: LatteColors.divider,
      ),

      // Fix: TabBarTheme → TabBarThemeData
      tabBarTheme: TabBarThemeData(
        labelColor: LatteColors.primary,
        unselectedLabelColor: LatteColors.textHint,
        indicatorColor: LatteColors.primary,
        indicatorSize: TabBarIndicatorSize.label,
        labelStyle: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
        unselectedLabelStyle: GoogleFonts.poppins(fontSize: 14),
        dividerColor: LatteColors.divider,
      ),

      iconTheme: const IconThemeData(color: LatteColors.primary, size: 24),
      primaryIconTheme: const IconThemeData(color: Colors.white, size: 24),

      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: LatteColors.primary,
        linearTrackColor: LatteColors.divider,
        circularTrackColor: LatteColors.divider,
      ),

      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: LatteColors.textPrimary.withValues(alpha: 0.9),
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: GoogleFonts.poppins(color: LatteColors.accentLight, fontSize: 12),
      ),
    );
  }

  // ══════════════════════════════════════════
  //  🌑  DARK — "MIDNIGHT ESPRESSO"
  // ══════════════════════════════════════════
  static ThemeData get midnightEspresso {
    const colorScheme = ColorScheme(
      brightness:           Brightness.dark,
      primary:              EspressoColors.primary,
      onPrimary:            EspressoColors.scaffoldBg,
      primaryContainer:     EspressoColors.accentMuted,
      onPrimaryContainer:   EspressoColors.accent,
      secondary:            EspressoColors.accent,
      onSecondary:          EspressoColors.scaffoldBg,
      secondaryContainer:   EspressoColors.surfaceSheet,
      onSecondaryContainer: EspressoColors.textPrimary,
      tertiary:             EspressoColors.primaryDark,
      onTertiary:           EspressoColors.textPrimary,
      tertiaryContainer:    EspressoColors.accentMuted,
      onTertiaryContainer:  EspressoColors.accent,
      surface:              EspressoColors.surfaceCard,
      onSurface:            EspressoColors.textPrimary,
      surfaceContainerHighest: EspressoColors.surfaceSheet,
      onSurfaceVariant:     EspressoColors.textSecondary,
      error:                EspressoColors.error,
      onError:              EspressoColors.scaffoldBg,
      errorContainer:       Color(0xFF5C1A1A),
      onErrorContainer:     EspressoColors.error,
      outline:              EspressoColors.divider,
      outlineVariant:       EspressoColors.accentMuted,
      scrim:                Colors.black,
      shadow:               EspressoColors.neumorphShadow,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: EspressoColors.scaffoldBg,
      textTheme: AppTypography.espressoTextTheme(),
      primaryTextTheme: AppTypography.espressoTextTheme(),

      appBarTheme: AppBarTheme(
        backgroundColor: EspressoColors.surfaceCard,
        foregroundColor: EspressoColors.primary,
        elevation: 0,
        shadowColor: EspressoColors.neumorphShadow,
        centerTitle: true,
        titleTextStyle: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w700, color: EspressoColors.primary, letterSpacing: 0.5),
        iconTheme: const IconThemeData(color: EspressoColors.primary),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith((s) => s.contains(WidgetState.pressed) ? EspressoColors.surfaceSheet : EspressoColors.surfaceCard),
          foregroundColor: WidgetStateProperty.all(EspressoColors.primary),
          overlayColor:    WidgetStateProperty.all(EspressoColors.primary.withValues(alpha: 0.1)),
          elevation:       WidgetStateProperty.all(0),
          padding:         WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 24, vertical: 14)),
          shape:           WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))),
          textStyle:       WidgetStateProperty.all(GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w600)),
          shadowColor:     WidgetStateProperty.all(EspressoColors.neumorphShadow),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: EspressoColors.primary,
          foregroundColor: EspressoColors.scaffoldBg,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          textStyle: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600, letterSpacing: 0.3),
          elevation: 0,
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: EspressoColors.primary,
          side: const BorderSide(color: EspressoColors.primary, width: 1.5),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          textStyle: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
        ),
      ),

      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: EspressoColors.primary,
        foregroundColor: EspressoColors.scaffoldBg,
        elevation: 6,
        shape: CircleBorder(),
      ),

      // Fix: CardTheme → CardThemeData
      cardTheme: const CardThemeData(
        color: EspressoColors.surfaceCard,
        elevation: 0,
        shadowColor: EspressoColors.neumorphShadow,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(18))),
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: EspressoColors.surfaceCard,
        hintStyle: GoogleFonts.poppins(color: EspressoColors.textHint, fontSize: 14),
        labelStyle: GoogleFonts.poppins(color: EspressoColors.textSecondary, fontSize: 14, fontWeight: FontWeight.w500),
        floatingLabelStyle: GoogleFonts.poppins(color: EspressoColors.primary, fontSize: 13, fontWeight: FontWeight.w600),
        border:        OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: const BorderSide(color: EspressoColors.divider)),
        enabledBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: const BorderSide(color: EspressoColors.divider, width: 1.2)),
        focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: const BorderSide(color: EspressoColors.primary, width: 2)),
        errorBorder:    OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: const BorderSide(color: EspressoColors.error,   width: 1.5)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: EspressoColors.surfaceCard,
        selectedItemColor: EspressoColors.primary,
        unselectedItemColor: EspressoColors.textHint,
        selectedLabelStyle: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w600),
        unselectedLabelStyle: GoogleFonts.poppins(fontSize: 12),
        elevation: 8,
        type: BottomNavigationBarType.fixed,
      ),

      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: EspressoColors.surfaceCard,
        indicatorColor: EspressoColors.accentMuted,
        iconTheme: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return const IconThemeData(color: EspressoColors.primary, size: 24);
          return const IconThemeData(color: EspressoColors.textHint, size: 24);
        }),
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w600, color: EspressoColors.primary);
          return GoogleFonts.poppins(fontSize: 12, color: EspressoColors.textHint);
        }),
        elevation: 4,
      ),

      chipTheme: ChipThemeData(
        backgroundColor: EspressoColors.surfaceSheet,
        selectedColor: EspressoColors.primary,
        disabledColor: EspressoColors.divider,
        labelStyle: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w500, color: EspressoColors.textPrimary),
        secondaryLabelStyle: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w500, color: EspressoColors.scaffoldBg),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        side: const BorderSide(color: EspressoColors.divider),
      ),

      sliderTheme: SliderThemeData(
        activeTrackColor: EspressoColors.primary,
        inactiveTrackColor: EspressoColors.divider,
        thumbColor: EspressoColors.accent,
        overlayColor: EspressoColors.primary.withValues(alpha: 0.15),
        valueIndicatorColor: EspressoColors.primary,
        valueIndicatorTextStyle: GoogleFonts.poppins(color: EspressoColors.scaffoldBg, fontWeight: FontWeight.w600),
        trackHeight: 4,
      ),

      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((s) => s.contains(WidgetState.selected) ? EspressoColors.scaffoldBg : EspressoColors.textHint),
        trackColor: WidgetStateProperty.resolveWith((s) => s.contains(WidgetState.selected) ? EspressoColors.primary : EspressoColors.divider),
      ),

      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((s) => s.contains(WidgetState.selected) ? EspressoColors.primary : Colors.transparent),
        checkColor: WidgetStateProperty.all(EspressoColors.scaffoldBg),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        side: const BorderSide(color: EspressoColors.primary, width: 1.5),
      ),

      dividerTheme: const DividerThemeData(color: EspressoColors.divider, thickness: 1, space: 1),

      snackBarTheme: SnackBarThemeData(
        backgroundColor: EspressoColors.surfaceSheet,
        contentTextStyle: GoogleFonts.poppins(color: EspressoColors.textPrimary, fontSize: 14),
        actionTextColor: EspressoColors.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        behavior: SnackBarBehavior.floating,
      ),

      // Fix: DialogTheme → DialogThemeData
      dialogTheme: DialogThemeData(
        backgroundColor: EspressoColors.surfaceCard,
        elevation: 12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        titleTextStyle: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w700, color: EspressoColors.primary),
        contentTextStyle: GoogleFonts.poppins(fontSize: 14, color: EspressoColors.textSecondary),
      ),

      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: EspressoColors.surfaceCard,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
        elevation: 16,
        dragHandleColor: EspressoColors.divider,
      ),

      // Fix: TabBarTheme → TabBarThemeData
      tabBarTheme: TabBarThemeData(
        labelColor: EspressoColors.primary,
        unselectedLabelColor: EspressoColors.textHint,
        indicatorColor: EspressoColors.primary,
        indicatorSize: TabBarIndicatorSize.label,
        labelStyle: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
        unselectedLabelStyle: GoogleFonts.poppins(fontSize: 14),
        dividerColor: EspressoColors.divider,
      ),

      iconTheme: const IconThemeData(color: EspressoColors.primary, size: 24),
      primaryIconTheme: const IconThemeData(color: EspressoColors.scaffoldBg, size: 24),

      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: EspressoColors.primary,
        linearTrackColor: EspressoColors.divider,
        circularTrackColor: EspressoColors.divider,
      ),

      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: EspressoColors.surfaceSheet,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: EspressoColors.primary.withValues(alpha: 0.4)),
        ),
        textStyle: GoogleFonts.poppins(color: EspressoColors.accent, fontSize: 12),
      ),
    );
  }
}