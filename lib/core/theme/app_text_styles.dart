import 'package:flutter/material.dart';

import 'app_colors.dart';

/// Typography system for the ShopLite mobile e-commerce UI.
///
/// Font sizes and weights are visually estimated from the supplied screens.
/// Use Inter as the primary font and Noto Sans Arabic as the fallback font.
abstract final class AppTextStyles {
  AppTextStyles._();

  static const String fontFamily = 'Inter';
  static const List<String> fontFamilyFallback = ['NotoSansArabic'];

  // ---------------------------------------------------------------------------
  // Display & headings
  // ---------------------------------------------------------------------------

  /// Large success / failure message — 24px, Bold.
  static const TextStyle displayLarge = TextStyle(
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 1.25,
    color: AppColors.darkText,
  );

  /// Main screen title — 23px, Bold.
  static const TextStyle headlineLarge = TextStyle(
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
    fontSize: 23,
    fontWeight: FontWeight.w700,
    height: 1.25,
    color: AppColors.darkText,
  );

  /// Secondary page heading — 20px, Bold.
  static const TextStyle headlineMedium = TextStyle(
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    height: 1.3,
    color: AppColors.darkText,
  );

  /// Section heading — 17px, Bold.
  static const TextStyle titleLarge = TextStyle(
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
    fontSize: 17,
    fontWeight: FontWeight.w700,
    height: 1.3,
    color: AppColors.darkText,
  );

  /// Card / subsection heading — 15px, Semi Bold.
  static const TextStyle titleMedium = TextStyle(
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
    fontSize: 15,
    fontWeight: FontWeight.w600,
    height: 1.35,
    color: AppColors.darkText,
  );

  /// Compact title — 14px, Semi Bold.
  static const TextStyle titleSmall = TextStyle(
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.35,
    color: AppColors.darkText,
  );

  static const TextStyle hint = TextStyle(
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.35,
    color: AppColors.textSecondaryLight,
  );

  // ---------------------------------------------------------------------------
  // Body text
  // ---------------------------------------------------------------------------

  /// Primary body copy — 14px, Regular.
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.5,
    color: AppColors.darkText,
  );

  /// Secondary body copy — 13px, Regular.
  static const TextStyle bodyMedium = TextStyle(
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
    fontSize: 13,
    fontWeight: FontWeight.w400,
    height: 1.5,
    color: AppColors.secondaryText,
  );

  /// Supporting / helper copy — 12px, Regular.
  static const TextStyle bodySmall = TextStyle(
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.45,
    color: AppColors.secondaryText,
  );

  // ---------------------------------------------------------------------------
  // Labels & controls
  // ---------------------------------------------------------------------------

  /// Primary button label — 15px, Bold.
  static const TextStyle labelLarge = TextStyle(
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
    fontSize: 15,
    fontWeight: FontWeight.w700,
    height: 1.2,
    color: AppColors.white,
  );

  static const TextStyle button = TextStyle(
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
    fontSize: 15,
    fontWeight: FontWeight.w700,
    height: 1.2,
    color: AppColors.white,
  );

  /// Tabs, chips, and compact button labels — 13px, Semi Bold.
  static const TextStyle labelMedium = TextStyle(
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
    fontSize: 13,
    fontWeight: FontWeight.w600,
    height: 1.25,
    color: AppColors.darkText,
  );

  /// Small labels / metadata — 11px, Medium.
  static const TextStyle labelSmall = TextStyle(
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
    fontSize: 11,
    fontWeight: FontWeight.w500,
    height: 1.3,
    color: AppColors.secondaryText,
  );

  // ---------------------------------------------------------------------------
  // E-commerce specific styles
  // ---------------------------------------------------------------------------

  /// Product name in product cards and cart items.
  static const TextStyle productName = TextStyle(
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
    fontSize: 13,
    fontWeight: FontWeight.w600,
    height: 1.35,
    color: AppColors.darkText,
  );

  /// Product price / cart item price.
  static const TextStyle productPrice = TextStyle(
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 1.25,
    color: AppColors.darkText,
  );

  /// Selected / emphasized price, such as cart item price.
  static const TextStyle highlightedPrice = TextStyle(
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 1.25,
    color: AppColors.primaryBlue,
  );

  /// Total amount in order summaries.
  static const TextStyle totalPrice = TextStyle(
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    height: 1.25,
    color: AppColors.darkText,
  );

  /// Small rating value beside the star icon.
  static const TextStyle rating = TextStyle(
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
    fontSize: 11,
    fontWeight: FontWeight.w600,
    height: 1.2,
    color: AppColors.ratingGold,
  );

  /// Tiny uppercase card eyebrow, e.g. ORDER DETAILS.
  static const TextStyle overline = TextStyle(
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
    fontSize: 10,
    fontWeight: FontWeight.w700,
    height: 1.3,
    letterSpacing: 0.2,
    color: AppColors.secondaryText,
  );

  /// Success / error explanatory paragraph.
  static const TextStyle statusDescription = TextStyle(
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
    fontSize: 13,
    fontWeight: FontWeight.w400,
    height: 1.5,
    color: AppColors.secondaryText,
  );

  // ---------------------------------------------------------------------------
  // Material TextTheme
  // ---------------------------------------------------------------------------

  static const TextTheme textTheme = TextTheme(
    displayLarge: displayLarge,
    headlineLarge: headlineLarge,
    headlineMedium: headlineMedium,
    titleLarge: titleLarge,
    titleMedium: titleMedium,
    titleSmall: titleSmall,
    bodyLarge: bodyLarge,
    bodyMedium: bodyMedium,
    bodySmall: bodySmall,
    labelLarge: labelLarge,
    labelMedium: labelMedium,
    labelSmall: labelSmall,
  );
}
