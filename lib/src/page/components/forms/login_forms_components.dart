import 'package:flutter/material.dart';

import '../../../application/usecase/auth/user_authentication_validator.dart';
import '../button/button_component.dart';
import '../input/input_forgot_password_component.dart';
import '../input/simples_input_component.dart';

class LoginFormsComponents extends StatefulWidget {
  const LoginFormsComponents({super.key});

  @override
  State<LoginFormsComponents> createState() => _LoginFormsComponentsState();
}

class _LoginFormsComponentsState extends State<LoginFormsComponents> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final loginValidator  = UserAuthenticationValidator();

  final focusPassword = FocusNode();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    focusPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Form(
      key: loginValidator.formkey,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: SimplesInputComponent(
            title: "E-mail",
            subTitle: "Digite seu e-mail",
            validator: (_) {
              return loginValidator.validateUser(emailController.text);
            },
            onFieldSubmitted: (p0) {
              FocusScope.of(context).requestFocus(focusPassword);
            },                            
            onChanged: (_) {
              loginValidator.onChanged(email: emailController.text);
            },
            controller: emailController),
        ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: InputForgotPasswordComponent(
              title: "Password",
              subTitle: "Digite sua senha",
              focusNode: focusPassword,
              passwordEnable: true, 
              onFieldSubmitted: (_){
                loginValidator.execute();
              },
              controller: passwordController,
              validator: (_) {
                return loginValidator.validatePassword(passwordController.text);
              },
              onChanged: (_) {
                loginValidator.onChanged(email: emailController.text);
              },
              onPressed: () {  }),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: ButtonComponent(
              onPressed: (){loginValidator.execute();}, 
              title: 'Entrar',),
          ),]));
  }
}