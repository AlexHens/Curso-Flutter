
import 'dart:math' as math;

class Cuadrado{
  double lado;

  Cuadrado(double lado):
    this.lado = lado;

  double get area {
    return this.lado*this.lado;
  }

  set area(double valor){
    this.lado = math.sqrt(valor);
  }

  double calculaArea(){
    return this.lado*this.lado;
  }

}
void main(){

  Cuadrado c = new Cuadrado(2);

  c.area = 100;

  print("area: ${c.calculaArea()}");
  print("lado: ${c.lado}");
  print("area get: ${c.area}");

  

}