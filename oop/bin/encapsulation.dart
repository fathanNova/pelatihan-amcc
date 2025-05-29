class BankAccount{
  // _saldo bersifat private, yang artinya tidak bisa diakses dari luar class
  // _ atau (unserscore) adalah tanda bahwa variabel tersebut bersifat private
  double _saldo = 0;

  void deposit(double jumlah){
    _saldo += jumlah;
    print('Saldo bertambah menjadi: $_saldo');
  }

  void withdraw(double jumlah){
    if(jumlah <= _saldo){
      _saldo -= jumlah;
      print('Berhasil menarik $jumlah. Saldo sekarang: $_saldo');
    }else{
      print('Saldo tidak cukup!');
    }
  }

  void getSaldo(){
    print('Saldo saat ini: $_saldo');
  }
}

void main(){
  BankAccount rekening = BankAccount();
  rekening.deposit(200000);
  rekening.getSaldo();

  rekening.withdraw(150000);
}