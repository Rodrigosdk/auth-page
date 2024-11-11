import 'package:auth/src/page/components/criation_account/question_options_line_components.dart';
import 'package:auth/src/page/components/forms/register_forms_components.dart';
import 'package:flutter/material.dart';

import 'components/infomartive_content/infomartive_content_component.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            if(MediaQuery.of(context).size.width >= 850 && MediaQuery.of(context).size.height >= 450)
                Flexible(
                  flex: 2,
                  child: Image.asset("assets/image/background.png",scale:  1.3,)),
              Expanded( 
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if(MediaQuery.of(context).size.width <= 750)
                        const SizedBox(height: 65),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: InfomartiveContentComponent(
                          title: "Cadastro",
                          description: "Cadastre-se na plataforma para começar a construir seus projetos ainda hoje.",
                        ),
                      ),
                      if(MediaQuery.of(context).size.width <= 750)
                        const SizedBox(height: 10,),
                      
                      const RegisterFormsComponents(),
        
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: QuestionOptionsLineComponents(
                          title: "Deseja acessar sua conta?",
                          subTitle: "Acessar conta",
                          onPressed: (){Navigator.of(context).pop();}),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}