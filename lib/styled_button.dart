import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/app_theme.dart';

// ─────────────────────────────────────────────────────────
//  NeumorphicButton  (primary — used throughout the app)
//
//  Reads the active theme from context and automatically
//  applies the correct Latte or Midnight Espresso shadow
//  pair, swapping between raised and pressed states on tap.
// ─────────────────────────────────────────────────────────

class NeumorphicButton extends StatefulWidget {
  const NeumorphicButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.borderRadius = 10.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
  });

  final VoidCallback onPressed;
  final Widget child;
  final double borderRadius;
  final EdgeInsetsGeometry padding;

  @override
  State<NeumorphicButton> createState() => _NeumorphicButtonState();
}

class _NeumorphicButtonState extends State<NeumorphicButton>
    with SingleTickerProviderStateMixin {
  bool _pressed = false;

  // Tiny scale animation reinforces the press feel
  late final AnimationController _scaleCtrl = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 80),
    lowerBound: 0.94,
    upperBound: 1.0,
    value: 1.0,
  );

  @override
  void dispose() {
    _scaleCtrl.dispose();
    super.dispose();
  }

  void _onTapDown(TapDownDetails _) {
    setState(() => _pressed = true);
    _scaleCtrl.reverse();
  }

  void _onTapUp(TapUpDetails _) {
    setState(() => _pressed = false);
    _scaleCtrl.forward();
    widget.onPressed();
  }

  void _onTapCancel() {
    setState(() => _pressed = false);
    _scaleCtrl.forward();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final bgColor = isDark
        ? EspressoColors.surfaceCard
        : LatteColors.surfaceCard;

    final textColor = isDark
        ? EspressoColors.primary
        : LatteColors.primary;

    final shadows = _pressed
        ? (isDark
            ? NeumorphicShadows.espressoPressed()
            : NeumorphicShadows.lattePressed())
        : (isDark
            ? NeumorphicShadows.espressoRaised()
            : NeumorphicShadows.latteRaised());

    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: ScaleTransition(
        scale: _scaleCtrl,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 90),
          padding: widget.padding,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(widget.borderRadius),
            boxShadow: shadows,
          ),
          child: DefaultTextStyle(
            style: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
            child: IconTheme(
              data: IconThemeData(color: textColor, size: 18),
              child: widget.child,
            ),
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────
//  StyledButton  (legacy — kept so no other file breaks)
//
//  Now wraps NeumorphicButton internally so it automatically
//  gains the theme-aware neumorphic look without any call
//  sites needing to change.
// ─────────────────────────────────────────────────────────

class StyledButton extends StatelessWidget {
  const StyledButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  final VoidCallback onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: onPressed,
      child: child,
    );
  }
}