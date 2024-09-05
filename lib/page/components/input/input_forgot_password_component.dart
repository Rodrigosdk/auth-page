import 'package:flutter/material.dart';

import 'simples_input_component.dart';
import 'title_input_extensions.dart';

// ignore: must_be_immutable
class InputForgotPasswordComponent extends SimplesInputComponent {
  final void Function()? onPressed;

  InputForgotPasswordComponent({
    super.key, 
    required this.onPressed, 
    required super.title, 
    required super.controller, 
    required super.subTitle, 
    super.passwordEnable,
  });

  @override
  Widget titleWidget(BuildContext context) {
    final theme = Theme.of(context).extension<TitleInputExtensions>()!;
    
    return Flexible(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Text(super.title, style: theme.title)),
      
          TextButton(
            style: TextButton.styleFrom(overlayColor: Colors.transparent),
            onPressed: onPressed,
            child: Text("Esqueceu a senha?", style: theme.linktitle),
          ),
        ],
      ),
    );
  }
}