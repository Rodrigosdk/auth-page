class RegisterUser {
  final String? name;
  final String? surname;
  final String? email;
  final String? password;
  
  const RegisterUser({
    this.name,
    this.surname,
    this.email,
    this.password,
  });

  RegisterUser copyWith({
    String? name,
    String? surname,
    String? email,
    String? password,
  }) {
    return RegisterUser(
      name: name ?? this.name,
      surname: surname ?? this.surname,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
