import 'package:auth/page/components/criation_account/criation_account_components.dart';
import 'package:flutter/material.dart';

import 'components/button/button_entry_component.dart';
import 'components/infomartive_content/infomartive_content_component.dart';
import 'components/input/input_forgot_password_component.dart';
import 'components/input/simples_input_component.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    
    final passwordController = TextEditingController();
    return  Scaffold(
      body: SingleChildScrollView(
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
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      child: InfomartiveContentComponent(),
                    ),
                    SimplesInputComponent(
                      title: "E-mail",
                      subTitle: "Digite seu e-mail", 
                      controller: emailController),

                    InputForgotPasswordComponent(
                      title: "Password",
                      subTitle: "Digite sua senha",
                      passwordEnable: true, 
                      controller: passwordController, 
                      onPressed: () {  }),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: ButtonEntryComponent(onPressed: (){},),
                    ),

                    CriationAccountComponents(onPressed: (){},)
                  ],
                ),
              ),
            ),
            if(MediaQuery.of(context).size.width >= 750)
              Flexible(
                flex: 2,
                child: Image.asset("assets/image/background.png",scale:  1.3,))
          ],
        ),
      ),
    );
  }
}