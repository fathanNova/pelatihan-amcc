 Future<void> masakMie() async{
   print('rebus air');

   // await digunakan untuk menunggu delay pada saat itu juga
   // await membuat delay setelah output print
   await Future.delayed(Duration(seconds: 3));
   print('masukkan mie');
   await Future.delayed(Duration(seconds: 5));
   print('mie sudah matang');
 }

 void main() async{
 print('Mulai memasak mie');
 await masakMie();
 print('Selesai makan');
 }