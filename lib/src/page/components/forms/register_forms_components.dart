import 'package:flutter/material.dart';

import '../../../application/usecase/auth/register_user_validator.dart';
import '../button/button_component.dart';
import '../input/simples_input_component.dart';

class RegisterFormsComponents extends StatefulWidget {
  const RegisterFormsComponents({super.key});

  @override
  State<RegisterFormsComponents> createState() => _RegisterFormsComponents();
}

class _RegisterFormsComponents extends State<RegisterFormsComponents> {
  final nameConstroller = TextEditingController();
  final surnameConstroller = TextEditingController();  
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  
  final registerValidator  = RegisterUserValidator();
  
  final focusSurname = FocusNode();
  final focusEmail = FocusNode();
  final focusPassword = FocusNode();

  @override
  void dispose() {
    nameConstroller.dispose();
    surnameConstroller.dispose();
    emailController.dispose();
    passwordController.dispose();
    
    focusSurname.dispose();
    focusEmail.dispose();
    focusPassword.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerValidator.formkey,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: SimplesInputComponent(
            title: "Nome",
            subTitle: "Digite seu nome",
            validator: (_) {
              return registerValidator.validateName(nameConstroller.text);
            },
            onFieldSubmitted: (_) {
              FocusScope.of(context).requestFocus(focusSurname);
            },                            
            onChanged: (_) {
              registerValidator.onChanged(name: nameConstroller.text);
            },
            controller: nameConstroller),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: SimplesInputComponent(
            title: "Sobrenome",
            focusNode: focusSurname,
            subTitle: "Digite seu sobrenome",
            onFieldSubmitted: (_) {
              FocusScope.of(context).requestFocus(focusEmail);
            },                            
            onChanged: (_) {
              registerValidator.onChanged(surname: surnameConstroller.text);
            },
            controller: surnameConstroller),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: SimplesInputComponent(
            title: "E-mail",
            focusNode: focusEmail,
            subTitle: "Digite seu e-mail",
            validator: (_) {
              return registerValidator.validateEmail(emailController.text);
            },
            onFieldSubmitted: (p0) {
              FocusScope.of(context).requestFocus(focusPassword);
            },                            
            onChanged: (_) {
              registerValidator.onChanged(email: emailController.text);
            },
            controller: emailController),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: SimplesInputComponent(
            title: "Password",
            subTitle: "Digite sua senha",
            focusNode: focusPassword,
            passwordEnable: true, 
            onFieldSubmitted: (_){
              registerValidator.execute();
            },
            controller: passwordController,
            validator: (_) {
              return registerValidator.validatePassword(passwordController.text);
            },
            onChanged: (_) {
              registerValidator.onChanged(email: emailController.text);
            })),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: ButtonComponent(onPressed: (){registerValidator.execute();},title: "Cadastrar",),
          )]));
  }
}