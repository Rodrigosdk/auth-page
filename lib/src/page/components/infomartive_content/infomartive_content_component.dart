import 'package:flutter/material.dart';

import 'infomartive_content_extensions.dart';

class InfomartiveContentComponent extends StatelessWidget {
  final String title;
  final String description;

  const InfomartiveContentComponent({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<InfomartiveContentExtensions>()!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(title,
            overflow: TextOverflow.fade,  
            style: theme.title),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(description,
            overflow: TextOverflow.fade,
            style: theme.subtitle),
        )
      ],
    );
  }
}