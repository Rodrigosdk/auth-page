import 'package:flutter/material.dart';

import 'criation_account_extensions.dart';

class CriationAccountComponents extends StatelessWidget {
  final void Function() onPressed;
  
  const CriationAccountComponents({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<CriationAccountExtensions>()!;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(child: Text(
          "Ainda não tem uma conta?",
          overflow: TextOverflow.ellipsis,
          style: theme.title)),
        TextButton(
          onPressed: onPressed, 
          style: TextButton.styleFrom(overlayColor: Colors.transparent),
          child: Text("Inscreva-se",style:theme.linktitle ))
      ],
    );
  }
}