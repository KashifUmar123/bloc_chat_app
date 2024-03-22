import 'package:flutter/material.dart';

extension StylesExtension on BuildContext {
  TextStyle get body12400 => Theme.of(this).textTheme.bodyMedium!.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );
  TextStyle get body14400 => Theme.of(this).textTheme.bodyMedium!.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );
  TextStyle get body16400 => Theme.of(this).textTheme.bodyMedium!.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );
  TextStyle get body18400 => Theme.of(this).textTheme.bodyMedium!.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.w400,
      );
  TextStyle get title26700 => Theme.of(this).textTheme.titleLarge!.copyWith(
        fontSize: 26,
        fontWeight: FontWeight.w700,
      );
}
