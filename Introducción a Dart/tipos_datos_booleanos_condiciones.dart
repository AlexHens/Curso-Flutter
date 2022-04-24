
void main(){

  // * Booleanos

  /**
   * Los booleanos en dart aceptan valores de true, false o null
   * 
   * Para poder hacer que acepte un valor de tipo null añadimos '?' al lado del tipo bool
   */

//  * bool isActive = true;
    bool? isActive = null;

  // * Condiciones

  // Para negar una condición se usa '!', igual que en C++

  // if(isActive){
  //   print('Está activo');
  // }
  // else{
  //   print('Está inactivo');
  // }

  /**
   * * Comparar que son iguales --> ==
   * * Comparar que son distintos --> !=
   */

  if(isActive == null){
    print('isActive es nulo');
  }
  else{
    print('isActive no es nulo');
  }

}