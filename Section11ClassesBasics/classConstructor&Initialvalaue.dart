class BankAccount {
  // BankAccount(double balance) { // simple way
  //   this.balance = balance;
  // }

  // Below way is called initializer list
  // BankAccount({required String accountHolder, double balance = 0})
  //     : accountHolder = accountHolder, // verbose way
  //       balance = balance;

  // Below way is called shorthand Syntax, used more often
  BankAccount({required this.accountHolder, this.balance = 0});

  final String accountHolder;
  double balance = 0;

  void deposit(double amount) {
    balance += amount;
  }

  bool withdraw(double amount) {
    if (balance > amount) {
      balance -= amount;
      return true;
    }
    return false;
  }

  String displayBalance() {
    return "Your remaining balance is \$$balance";
  }
}

void main() {
  final bankAccount = BankAccount(accountHolder: 'Zoe', balance: 100);
  bankAccount.deposit(100);
  double withdrawnAmount = 250;
  final withdrawlSuccess = bankAccount.withdraw(withdrawnAmount);
  withdrawlSuccess
      ? print('Successfully Withdrawn amount \$$withdrawnAmount')
      : print("Low balance!\n${bankAccount.displayBalance()}");
}
