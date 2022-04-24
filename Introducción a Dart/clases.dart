
class Heroe{

  String? nombre;
  String? poder;

  Heroe(this.nombre, this.poder);

  Heroe.fromJson(Map<String, String> parsedJson){
    this.nombre = parsedJson['nombre']!;
    this.poder = parsedJson['poder'] ?? 'No tiene poder'; // El ?? nos sirve para protegernos en el caso de que venga como nulo.
  }

  @override
  String toString() {
    return 'Heroe: nombre: ${this.nombre}, poder: ${this.poder}';
  }
  
}
void main(){

  final rawJson = {
    'nombre': 'Tony Stark',
    'poder': 'dinero'
  };

  Heroe wolverine = new Heroe("Logan", "Regeneracion");
  Heroe ironman = new Heroe.fromJson(rawJson);

  print(ironman);

  // wolverine.nombre = "Logan";
  // wolverine.poder = "Regeneracion";

  print(wolverine);
  print(wolverine.nombre);

}