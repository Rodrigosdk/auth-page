import 'package:flutter/material.dart';

import 'components/infomartive_content/infomartive_content_component.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              InfomartiveContentComponent(),
            ],
          ),
        ],
      ),
    );
  }
}