// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class RequestLogin {
  final String? email;
  final String? password;

  RequestLogin({
    this.email,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'password': password,
    };
  }

  factory RequestLogin.fromMap(Map<String, dynamic> map) {
    return RequestLogin(
      email: map['email'] != null ? map['email'] as String : null,
      password: map['password'] != null ? map['password'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory RequestLogin.fromJson(String source) => RequestLogin.fromMap(json.decode(source) as Map<String, dynamic>);


  RequestLogin copyWith({
    String? email,
    String? password,
  }) {
    return RequestLogin(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
