import 'package:flutter/material.dart';

import 'button_extensions.dart';

class ButtonComponent extends StatelessWidget {
  final String title;
  final void Function()? onPressed;

  const ButtonComponent({super.key, required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ButtonExtensions>()!;

    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: theme.background,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(title, style: theme.textButton),
              ),
            ),
        ),
      ],
    );
  }
}