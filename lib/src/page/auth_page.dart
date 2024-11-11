import 'package:auth/src/page/components/criation_account/question_options_line_components.dart';
import 'package:flutter/material.dart';

import 'components/forms/login_forms_components.dart';
import 'components/infomartive_content/infomartive_content_component.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if(MediaQuery.of(context).size.width <= 750)
                        const SizedBox(height: 65,),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: InfomartiveContentComponent(
                          title: "Faça login",
                          description: "Faça login ou registre-se para começar a construir seus projetos ainda hoje.",),
                      ),
                      if(MediaQuery.of(context).size.width <= 750)
                        const SizedBox(height: 10,),
                      
                      const LoginFormsComponents(),
        
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: QuestionOptionsLineComponents( 
                          title: "Ainda não tem uma conta?",
                          subTitle: "Inscreva-se",
                          onPressed: (){Navigator.of(context).pushNamed('/register');},),
                      )
                    ],
                  ),
                ),
              ),
              if(MediaQuery.of(context).size.width >= 750 && MediaQuery.of(context).size.height >= 450)
                Flexible(
                  flex: 2,
                  child: Image.asset("assets/image/background.png",scale:  1.3,))
            ],
          ),
        ),
      ),
    );
  }
}