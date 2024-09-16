import 'package:flutter/material.dart';

import '../../../domain/enum/e_request_login_status.dart';
import '../../../shared/communication/requests/request_login.dart';

class UserAuthenticationValidator {
  final formkey = GlobalKey<FormState>();

  RequestLogin model = RequestLogin();

  String? validateUser(String? value) {
    return value?.isEmpty ?? true ? "O email não pode está vazio" : null;
  }

  String? validatePassword(String? value) {
    return value?.isEmpty ?? true ? "A senha não pode está vazia" : null;
  }
  
  RequestLogin onChanged({String? email, String? password, }) {
    model = model.copyWith(email: email, password: password);

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
