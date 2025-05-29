class Hewan{
  void bersuara(){
    print('Hewan bersuara...');
  }
}

/// @override digunakan untuk mengubah cara kerja dari method bersuara()
class Ayam extends Hewan{
  @override
  void bersuara(){
    print('Ayam berkokok...');
  }
}

class Burung extends Hewan{
  @override
  void bersuara(){
    print('Burung berkicau...');
  }
}

class Kucing extends Hewan{
  @override
  void bersuara(){
    print('Kucing mengeong...');
  }
}
void main(){
  Hewan ayam = Ayam();
  Hewan burung = Burung();
  Hewan kucing = Kucing();

  ayam.bersuara();
  burung.bersuara();
  kucing.bersuara();
}