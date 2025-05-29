/// class induk
class Kendaraan{
  String merk;

  Kendaraan(this.merk);

  void jalan(){
    print('$merk sedang berjalan....');
  }
}
/// class anak (keturunan dari induk)
/// untuk memanggil kelas induk, menggunakan extends
class Motor extends Kendaraan{
  int cc;

  Motor(super.merk, this.cc);
  // super digunakan unuk memanggil dan mengisi nilai dari properti merk pada class Kendaraan

  void infoMotor(){
    print('Motor $merk dengan mesin $cc cc.');
  }
}

void main(){
  Motor motor1 = Motor('Honda', 150);
  motor1.infoMotor();
  motor1.jalan();
}