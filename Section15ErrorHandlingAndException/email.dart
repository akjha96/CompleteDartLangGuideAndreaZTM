class EmailAddress {
  EmailAddress(this.email) {
    // assert(email.isNotEmpty);
    // assert(email.contains('@'));
    if (email.isEmpty) {
      throw FormatException('email cannot be empty');
    }
    if (!email.contains('@')) {
      throw FormatException('$email does not contain @ symbol');
    }
  }
  final String email;

  @override
  String toString() => email;
}

void main() {
  try {
    print(EmailAddress('me@example.com'));
    // print(EmailAddress('me.example.com'));
    print(EmailAddress(''));
  } on FormatException catch (e) {
    print(e);
  }
}
