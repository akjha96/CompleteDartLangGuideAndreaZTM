void main() {
  // var name = 'Auzo'; // can be set more than once
  // var age = 25;
  // var height = 1.84;

  final lastName = 'Utta'; // read only variables, can only be set once
  final upperLastName = lastName.toUpperCase();
  print(upperLastName);

  // const middleName = 'Coder'; // compile-time constants
  // const upperMiddleName = middleName
  //     .toUpperCase(); //const only compiled at runtime() so dart gives error
  // print('$middleName & $upperMiddleName');

  const x = 1;
  const y = 2;
  const z = x + y; // valid
  // z = 4; invalid
  print(z);

  /*Best Practice
  Prefer const over final & final over var
   */
}
