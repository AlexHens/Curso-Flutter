
void main(){

  /**
   * Formas de declarar e inicializar un map.
   */
  Map persona = {
    'nombre' : 'Alejandro',
    'edad' : 24,
    'soltero' : false
  };

  print(persona['nombre']); // Acceder a un determinado valor del map.

  /**
   * Declarar e inicializar maps de unos tipos determinados.
   */

  Map<int, String> personas_aux = {
    1 : 'Alejandro'
  };

  personas_aux.addAll({2 : 'Julia'}); // Añadir un elemento al map.

  print(personas_aux);

}