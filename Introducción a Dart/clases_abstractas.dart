
abstract class Animal{
  int? patas;

  Animal();

  void emitirSonido();
}

class Perro implements Animal{
  int? patas;

  void emitirSonido(){
    print("Guauuuuuuuuuuuuu");
  }
}

class Gato implements Animal{
  int? patas;
  int? cola;

  void emitirSonido(){
    print("Miauuuuuuuu");
  }
}

void emitirSonido(Animal animal){
  animal.emitirSonido();
}
void main(){

  Perro p = new Perro();
  Gato g = new Gato();

  p.emitirSonido();
  emitirSonido(p);

  g.emitirSonido();
  emitirSonido(g);

}