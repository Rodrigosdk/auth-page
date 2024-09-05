import 'package:flutter/material.dart';

class CriationAccountExtensions extends ThemeExtension<CriationAccountExtensions> {
  final TextStyle title;
  final TextStyle linktitle;

  CriationAccountExtensions({required this.title, required this.linktitle});
  
  @override
  ThemeExtension<CriationAccountExtensions> lerp(covariant ThemeExtension<CriationAccountExtensions>? other, double t) {
     if (other is! CriationAccountExtensions) {
      return this;
    }
    return CriationAccountExtensions(
        title: TextStyle.lerp(title, other.title, t)!,
        linktitle: TextStyle.lerp(linktitle, other.linktitle, t)!);
  }

  @override
  ThemeExtension<CriationAccountExtensions>  copyWith({
    TextStyle? title,
    TextStyle? linktitle,
  }) {
    return CriationAccountExtensions(
      title: title ?? this.title,
      linktitle: linktitle ?? this.linktitle,
    );
  }
}
