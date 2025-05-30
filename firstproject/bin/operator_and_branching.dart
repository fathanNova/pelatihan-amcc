void main() {
  /// operator aritmatika
  print(6 + 3); // penjumlahan
  print(6 - 3); // pengurangan
  print(6 * 3); // perkalian
  print(6 / 3); // pembagian
  print(6 ~/ 3); // pembagian, tapi hasilnya berupa nilai int (tanpa koma)
  print(6 % 3); // modulo atau sisa bagi

  /// contoh increment
  int number = 1;
  number += 1;
  print(number); //number = 2

  /// operator perbandingan
  bool condition1 = true;
  bool condition2 = false;
  int number1 = 2;
  int number2 = 3;
  print(condition1 == condition2);
  print(condition1 != condition2);
  print(number1 > number2);
  print(number1 < number2);

  /// operator logika
  print(condition1 && condition2);
  print(condition1 || condition2);
  print(!condition1);

  /// percabangan
  if (number > 0) {
    print('Number is positive');
  } else {
    print('Number is negative');
  }

  /// conditional expression
  // jika name tidak null, buyer akan menyimpan nilai name. jika null maka akan menyimpan user
  var name = 'Nova';
  var buyer = name ?? 'user';
  print(buyer);

  /// operator ternary
  var result = (number > 0) ? 'Positive' : 'Negative';
  print(result);

  /// switch case
  switch (number) {
    case 1:
      print('January');
      break;
    case 2:
      print('February');
      break;
    case 3:
      print('March');
      break;
    default:
      print('Bukan bulan');
  }

  /// perulangan for
  for (int i = 0; i < 10; i++) {
    print('Angka ke-$i');
  }

  /// perulangan while
  var i = 0;
  while (i < 10) {
    print('Angka ke-$i');
    i++;
  }

  /// perulangan do while
  // cocok digunakan untuk perulangan yang jumlah iterasinya tidak diketahui
  do {
    print('Angka ke-$i');
    i++;
  } while (i < 10);
}
