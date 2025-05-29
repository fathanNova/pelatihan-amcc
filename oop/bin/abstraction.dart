/// abstract class
abstract class Hewan{
  String nama;
  Hewan(this.nama);

  void bersuara(); // method abstrak (wajib diimplementasikan)
}

class Kucing extends Hewan{
  Kucing(String nama) : super(nama); // meneruskan nama ke class induk (Hewan)

  @override
  void bersuara(){
    print('$nama: Miaw!');
  }
}

class Kirik extends Hewan{
  Kirik(String nama) : super(nama);

  @override
  void bersuara(){
    print('$nama: Guk Guk!');
  }
}
void main(){
  Hewan kucing1 = Kucing('Kitty');
  kucing1.bersuara();

  Hewan kirik1 = Kirik('Dog');
  kirik1.bersuara();
}