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
        Text("Acesse a plataforma",
            style: theme.title),
        Text("Faça login ou registre-se para começar a construir seus projetos ainda hoje.",
            style: theme.subtitle)
      ],
    );
  }
}