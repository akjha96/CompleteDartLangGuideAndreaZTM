import 'privateBankAccount.dart';

void main() {
  final bankAccount = BankAccount('Auzo', 100);
  bankAccount.deposit(20);
  double withdrawnAmount = 650;
  final withdrawlSuccess = bankAccount.withdraw(withdrawnAmount);
  withdrawlSuccess
      ? print('Successfully Withdrawn amount \$$withdrawnAmount')
      : print("Low balance!\n${bankAccount.displayBalance()}");

  print(bankAccount.balance);
}
