class BankAccount {
  BankAccount(this.accountHolder, this._balance);

  final String accountHolder;
  double _balance = 0;
  double get balance => _balance;

  void deposit(double amount) {
    _balance += amount;
  }

  bool withdraw(double amount) {
    if (_balance > amount) {
      _balance -= amount;
      return true;
    }
    return false;
  }

  String displayBalance() {
    return "Your remaining balance is \$$_balance";
  }
}

void main() {
  final bankAccount = BankAccount('Auzo', 100);
  bankAccount.deposit(100);
  double withdrawnAmount = 50;
  final withdrawlSuccess = bankAccount.withdraw(withdrawnAmount);
  withdrawlSuccess
      ? print('Successfully Withdrawn amount \$$withdrawnAmount')
      : print("Low balance!\n${bankAccount.displayBalance()}");
}
