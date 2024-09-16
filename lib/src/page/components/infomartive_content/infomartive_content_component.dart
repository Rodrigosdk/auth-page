import 'package:flutter/material.dart';

import 'infomartive_content_extensions.dart';

class InfomartiveContentComponent extends StatelessWidget {
  const InfomartiveContentComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<InfomartiveContentExtensions>()!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Acesse a plataforma",
            overflow: TextOverflow.fade,  
            style: theme.title),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Faça login ou registre-se para começar a construir seus projetos ainda hoje.",
            overflow: TextOverflow.fade,
            style: theme.subtitle),
        )
      ],
    );
  }
}