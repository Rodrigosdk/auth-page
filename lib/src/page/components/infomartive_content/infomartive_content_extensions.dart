import 'package:flutter/material.dart';

class InfomartiveContentExtensions extends ThemeExtension<InfomartiveContentExtensions> {
  final TextStyle title;
  final TextStyle subtitle;

  const InfomartiveContentExtensions({
    required this.title,
    required this.subtitle,
  });

  @override
  ThemeExtension<InfomartiveContentExtensions> lerp(covariant ThemeExtension<InfomartiveContentExtensions>? other, double t) {
    if (other is! InfomartiveContentExtensions) {
      return this;
    }
    return InfomartiveContentExtensions(
        title: TextStyle.lerp(title, other.title, t)!,
        subtitle: TextStyle.lerp(subtitle, other.subtitle, t)!);
  }

  @override
  ThemeExtension<InfomartiveContentExtensions> copyWith({
    TextStyle? title,
    TextStyle? subtitle,
  }) {
    return InfomartiveContentExtensions(
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
    );
  }
}
