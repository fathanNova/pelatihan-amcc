/*class Kendaraan{
  String merk = '';
  int tahun = 0;

  void jalan(){
    print('$merk sedang berjalan');
  }
}
*/
/// ini adalah class
/// merk, warna, dan kecepatan adalah properties
/// jalan, klakson, dan rem adalah method
class Mobil{
  String merk;
  String warna;
  int kecepatan;

  Mobil(this.merk, this.warna, this.kecepatan); // ini adalah constructor

  void jalan(){
    print('$merk sedang berjalan dengan $kecepatan km/jam.');
  }

  void klakson(){
    print('$merk membunyikan klakson: Beep Beep!');
  }

  void rem(){
    print('$merk berhenti.');
  }

}
void main(){
  /*var mobil = Kendaraan();
  mobil.merk = 'Kijang';
  mobil.tahun = 1998;

  mobil.jalan();
*/

  var civic = Mobil('Civic', 'Biru', 120);
  civic.jalan();
  civic.klakson();
  civic.rem();

  var brio = Mobil('Brio', 'Kuning', 100);
  brio.jalan();
  brio.klakson();
  brio.rem();
}