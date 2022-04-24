Future<String> httpGet(String url){
  return Future.delayed( Duration(seconds: 3), (){
    return "Hola mundo - 3 segundos";
  });
}

Future<String> getNombre(String id) async { 
  return "$id - Alejandro";
}

void main() async {

  print("Antes de la peticion");

  String data = await httpGet("http:/api.nasa.com/aliens");
  print(data);

  String nombre = await getNombre('10');
  print(nombre);
  
  // getNombre('10').then((data) {
  //   print(data);
  // });

  print("Fin del programa");

}