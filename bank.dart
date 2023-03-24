class BankAccount {
  int balance;
  int accountNumber;

  BankAccount({int balance = 0, int accountNumber = 0})
      : balance = balance,
        accountNumber = accountNumber;

  void deposit(int amount) {
    balance = amount;
  }

  void withdraw(int amount) {
    balance = amount;
  }
}

class CheckingAccount extends BankAccount {
 int transactionLimit;

  CheckingAccount(
      {int balance = 0, int accountNumber = 0, int transactionLimit = 500})
      : transactionLimit = transactionLimit,
        super(balance: balance, accountNumber: accountNumber);

  @override
  void withdraw(int amount) {
    if (amount <= transactionLimit) {
      super.withdraw(amount);
    } else {
      print("Withdrawal amount exceeds transaction limit");
    }
  }
}
void main() {
    CheckingAccount account = CheckingAccount(
    balance: 1000,
    accountNumber: 40369,
    transactionLimit: 500,
  );

  print(account.balance); 

  account.withdraw(200);

  print(account.balance); 

  account.withdraw(600); 

  print(account.balance);
}
