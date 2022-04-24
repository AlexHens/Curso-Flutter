
void main(){
  /**
   * Para declarar una variable tenemos distintas formas de hacerlo:
   */

  // * Strings
  /**
   * Cuando declaramos e inicializamos una variable con 'var' se asigna el tipo de variable con el valor del que se ha
   * inicializado. 
   * 
   * Dart es de tipo estricto, no es dinámico como python, pero es flexible.
   * 
   * De todas formas vamos a intentar no usarlo, ya que nos resulta muy difícil saber qué tipo de variable es.
   */

  // * var nombre = 'Tony';  // Primera forma de inicializar una variable.
  // * var apellido = 'Stark';

  // Esta forma es más clara
  String nombre = 'Tony';
  String apellido = 'Stark';

  // También se podría...
  // final nos dice que esa variable no va a cambiar su tipo ni su valor durante todo el programa
//  * final nombre = 'Tony';

  /**
   * Para declarar una constante lo hacemos como siempre con 'const'
   * * const tipo nombre_variable = valor;
   */

//  nombre = 'Peter';

  print(nombre);  // Imprimir un String por pantalla
  print('$nombre $apellido'); // Concatenación de dos Strings

  // * Números

  int empleados = 10; // Números enteros
  double salario = 1856.25; // Número real

  print(empleados);
  print(salario);

}