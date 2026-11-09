import 'package:flutter/material.dart';

/// Color palette for the ShopLite mobile e-commerce UI.
///
/// Values are taken from the supplied "Mobile E-Commerce — Color Palette".
/// Keep semantic colors here so widgets can share the same design tokens.
abstract final class AppColors {
  AppColors._();

  // ---------------------------------------------------------------------------
  // Core design system
  // ---------------------------------------------------------------------------

  /// #5269E8
  static const Color primaryBlue = Color(0xFF5269E8);

  /// #172235
  static const Color darkText = Color(0xFF172235);

  /// #F7F9FC
  static const Color background = Color(0xFFF7F9FC);

  /// #FFFFFF
  static const Color white = Color(0xFFFFFFFF);

  /// #8290A3
  static const Color secondaryText = Color(0xFF8290A3);

  /// #E7ECF3
  static const Color borders = Color(0xFFE7ECF3);


  static const Color icons = Color(0xff8290A3);

  // ---------------------------------------------------------------------------
  // Status and feedback
  // ---------------------------------------------------------------------------

  /// #21A675
  static const Color successGreen = Color(0xFF21A675);

  /// #E8F8F0
  static const Color successBackground = Color(0xFFE8F8F0);

  /// #E25C69
  static const Color errorRed = Color(0xFFE25C69);

  /// #FDEDEF
  static const Color errorBackground = Color(0xFFFDEDEF);

  /// #D88944
  static const Color warningOrange = Color(0xFFD88944);

  /// #FFF1E8
  static const Color warningBackground = Color(0xFFFFF1E8);

  // ---------------------------------------------------------------------------
  // Additional UI accents
  // ---------------------------------------------------------------------------

  /// #E9EEFF
  static const Color selectedControl = Color(0xFFE9EEFF);

  /// #6579C6
  static const Color secondaryBlue = Color(0xFF6579C6);

  /// #D29A36
  static const Color ratingGold = Color(0xFFD29A36);

  /// #EDF1FE
  static const Color softHighlight = Color(0xFFEDF1FE);

  // ---------------------------------------------------------------------------
  // Semantic aliases — Light theme
  // These keep common project-wide naming conventions readable.
  // ---------------------------------------------------------------------------

  static const Color actionPrimaryLight = primaryBlue;
  static const Color backgroundCanvasLight = background;
  static const Color textPrimaryLight = darkText;
  static const Color textSecondaryLight = secondaryText;
  static const Color borderDefaultLight = borders;

  // Common utility aliases used by widgets.
  static const Color transparent = Colors.transparent;
}
