class Credentials {
  const Credentials({this.email = '', this.password = ''});

  final String email;
  final String password;

  Credentials copyWith({String? email, String? password}) {
    return Credentials(
        email: email ?? this.email, password: password ?? this.password);
  }

  @override
  String toString() => 'Credentials(email: $email, password: $password)';
}

void main() {
  const credentials = Credentials();
  final updated1 = credentials.copyWith(email: 'abc@123.com');
  print(updated1);
  final updated2 = updated1.copyWith(password: 'abc999');
  print(updated2);
  final updated3 = updated2.copyWith(email: 'abc@553.com', password: 'test');
  print(updated3);
}
