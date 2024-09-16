// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ButtonEntryExtensions extends ThemeExtension<ButtonEntryExtensions> {
  final TextStyle textButton;
  final Color background;

  ButtonEntryExtensions({required this.textButton, required this.background});
  
  @override
  ThemeExtension<ButtonEntryExtensions> lerp(covariant ThemeExtension<ButtonEntryExtensions>? other, double t) {
     if (other is! ButtonEntryExtensions) {
      return this;
    }
    return ButtonEntryExtensions(
      background: Color.lerp(background, other.background, t)!,
      textButton: TextStyle.lerp(textButton, other.textButton, t)!);
  }


  @override
  ThemeExtension<ButtonEntryExtensions> copyWith({
    TextStyle? textButton,
    Color? background,
  }) {
    return ButtonEntryExtensions(
      textButton: textButton ?? this.textButton, 
      background: background ?? this.background,
    );
  }
}
