void main() {
  const age = 64;
  if (age < 16) {
    print('Junior Ticket');
    print('Price \$8');
  } else if (age >= 60) {
    print('Senior Ticket');
    print('Price \$6');
  } else {
    print('Regular Ticket');
    print('Price \$10');
  }
  print('Enjoy your visit!');
}
