import 'package:flutter/material.dart';

class TitleInputExtensions extends ThemeExtension<TitleInputExtensions>{
  final TextStyle title;
  final TextStyle linktitle;

  TitleInputExtensions({required this.title, required this.linktitle});
  
  @override
  ThemeExtension<TitleInputExtensions> copyWith({
    TextStyle? title,
    TextStyle? linktitle,
  }) {
    return TitleInputExtensions(
      title: title ?? this.title,
      linktitle: linktitle ?? this.linktitle,
    );
  }

  @override
  ThemeExtension<TitleInputExtensions> lerp(covariant ThemeExtension<TitleInputExtensions>? other, double t) {
    if (other is! TitleInputExtensions) {
      return this;
    }
    return TitleInputExtensions(
      title: TextStyle.lerp(title, other.title, t)!,
      linktitle: TextStyle.lerp(linktitle, other.linktitle, t)!);
  }

}