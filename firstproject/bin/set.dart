void main(){
  // Set menggunakan kurung kurawal untuk mengisi nilai
  // data tidak berurutan, nilai yang sama akan dianggap satu bukan dobel
  Set<int> angka = {4, 1, 5, 7};

  print(angka);

  // menambahkan nilai dalam Set
  angka.add(8);
  print(angka);

  // menghapus nilai dalam set
  angka.remove(1);
  print(angka);

  // mengecek apakah ada nilai tertentu dalam set
  print(angka.contains(7));
  print(angka);
}