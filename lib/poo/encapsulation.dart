class BankAccount {
  double _balance;
  double get balance => _balance;

  BankAccount(this._balance);

  void showBalance(){
    print('Balance: US\$ $_balance');
  }

  void deposit(double depositValue){
    _balance += depositValue;
  }

  void withdraw(double withdrawValue){
    if(withdrawValue < 0) return;
    if(withdrawValue > _balance) return print("Insufficient funds for this transaction.");
    _balance -= withdrawValue;
    print("Current Balance: $_balance");
  }
}


void main(){
  final account = BankAccount(0);

  account.deposit(200);

  account.withdraw(300);
  account.withdraw(100);
}
