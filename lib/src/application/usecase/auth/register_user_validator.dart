import 'package:flutter/material.dart';

import '../../../../shared/communication/requests/register_user.dart';
import '../../../domain/enum/e_request_login_status.dart';

class RegisterUserValidator {
  final formkey = GlobalKey<FormState>();

  RegisterUser model = const RegisterUser();

  String? validateName(String? value) {
    return value?.isEmpty ?? true ? "O nome não pode está vazio" : null;
  }
  String? validateEmail(String? value) {
    return value?.isEmpty ?? true ? "O E-mail não pode está vazio" : null;
  }  
  String? validatePassword(String? value) {
    return value?.isEmpty ?? true ? "A senha não pode está vazia" : null;
  }
  
  RegisterUser onChanged({
    String? name,
    String? surname,
    String? email,
    String? password,}) {
    model = model.copyWith(email: email, password: password,name: name, surname: surname);

    return model;
  }

  ERequestLoginStatus execute() {
    final form = formkey.currentState;

    if (form!.validate()) {
      return ERequestLoginStatus.valid;
    }
    return ERequestLoginStatus.invalid;
  }
}
