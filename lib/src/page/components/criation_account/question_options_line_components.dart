import 'package:flutter/material.dart';

import 'criation_account_extensions.dart';

class QuestionOptionsLineComponents extends StatelessWidget {
  final String title;
  final String subTitle;
  final void Function() onPressed;
  
  const QuestionOptionsLineComponents({super.key, required this.onPressed, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<CriationAccountExtensions>()!;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(child: Text(
          title,
          overflow: TextOverflow.ellipsis,
          style: theme.title)),
        TextButton(
          onPressed: onPressed, 
          style: TextButton.styleFrom(overlayColor: Colors.transparent),
          child: Text(subTitle,style:theme.linktitle ))
      ],
    );
  }
}