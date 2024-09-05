import 'package:flutter/material.dart';

import 'button_entry_extensions.dart';

class ButtonEntryComponent extends StatelessWidget {
  final void Function()? onPressed;

  const ButtonEntryComponent({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ButtonEntryExtensions>()!;

    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor:  theme.background,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('Entrar', style: theme.textButton),
              ),
            ),
        ),
      ],
    );
  }
}