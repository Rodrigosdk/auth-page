// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ButtonExtensions extends ThemeExtension<ButtonExtensions> {
  final TextStyle textButton;
  final Color background;

  ButtonExtensions({required this.textButton, required this.background});
  
  @override
  ThemeExtension<ButtonExtensions> lerp(covariant ThemeExtension<ButtonExtensions>? other, double t) {
     if (other is! ButtonExtensions) {
      return this;
    }
    return ButtonExtensions(
      background: Color.lerp(background, other.background, t)!,
      textButton: TextStyle.lerp(textButton, other.textButton, t)!);
  }


  @override
  ThemeExtension<ButtonExtensions> copyWith({
    TextStyle? textButton,
    Color? background,
  }) {
    return ButtonExtensions(
      textButton: textButton ?? this.textButton, 
      background: background ?? this.background,
    );
  }
}
