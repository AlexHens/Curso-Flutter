
void main(){

  // * Listas

  // * List numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];  // Una forma de declarar e inicializar una lista
  /**
   * Debemos decir que la lista que acabamos de crear e inicializar no es únicamente de números, sino
   * que es una lista dinámica, es decir admite también datos que no son numéricos.
   * 
   * Para crear una lista de enteros se haría de la siguiente forma:
   */

  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  /**
   * Si queremos que nuestra lista pueda estar inicializada a nulo entonces tenemos que poner '?'
   */

//  * List? numeros = null;

  /**
   * Los métodos más comunes de las listas son:
   */
  
  numeros.add(11);  // Añadimos un elemento a la lista

  // * Una forma de acceder al un determinado elemento de una lista es --> nombre_lista[índice_elemento]
  // * numeros[4]

  /**
   * Para generar una lista se haría de la siguiente forma:
   */

  final masNumeros = List.generate(100, (int index) => index); // Creamos una lista con 100 elementos, los cuales serán todos el valor de index


  print(numeros); // Imprimir una lista 
  print(numeros[4]);
  print(masNumeros);

}