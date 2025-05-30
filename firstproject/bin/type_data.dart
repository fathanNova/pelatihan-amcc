void main(){
  /// tipe data string
  String name = 'Nova';
  print(name);

  /// tipe data integer
  int year = 2025;
  print(year);

  /// tipe data double
  double phi = 3.14;
  print(phi);

  /// tipe data num
  num number = 10;
  num desimalNumber = 10.5;
  print('Tipe data Num bisa menampung $number dan juga $desimalNumber\n');

  /// tipe data boolean, hanya bisa menyimpan true (benar) atau false (salah)
  bool alreadyMarried = false;
  bool areYouHappy = true;
  print('Apakah kamu sudah menikah? $alreadyMarried, Apakah kamu bahagia saat ini? $areYouHappy\n');

  /// tipe data map digunakan untuk menyimpan pasangan key dan value
  /// value dapat dipanggil dengan key, misal memanggil kelas maka akan muncul valuenya yaitu IF03
  Map<String, dynamic> siswa = {'nama': 'Nova', "kelas": 'IF03'};
  print(siswa);
  print(siswa['kelas']);

  /// tipe data list adalah kumpulan item yang diurutkan dan dapat berisi beberapa nilai
  /// mirip dengan array tapi lebih fleksibel
  List<int> numbers = [1,2,3,4,5];
  print('List dari numbers: $numbers');
  List<String> fruits = ['Apple', 'Mango', 'Banana'];
  print('List dari fruits: $fruits');

  /// tipe data dynamic
  /// tipe data ini bisa menyimpan berbagai jenis data
  dynamic anything = 22;
  dynamic anythingMore = 'Fathan Nova';
  print(anything);
  print(anythingMore);
}