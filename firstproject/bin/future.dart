//import 'dart:async';
Future<String> ambilData(){
  return Future.delayed(Duration(seconds: 2), () => 'Data berhasil diambil');
}

void main(){
  ambilData().then((value) => print(value));

  // mengeksekusi ini terlebih dahulu daripada fungsi di atas
  print('Mengambil data');
}