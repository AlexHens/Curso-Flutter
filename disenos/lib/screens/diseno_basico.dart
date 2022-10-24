import 'package:flutter/material.dart';

class BasicDesingScreen extends StatelessWidget {
   
  const BasicDesingScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {  // Diseño sin appbar
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/landscape.jpg')), // Imágen especificada en los assets

          // Titulo
          Title(),  // Widget personalizado con el título del diseño.

          // Button Section
          ButtonSection(),  // Widget personalizado que corresponde a la sección de los botones.

          // Description
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text('Excepteur laborum ut nulla non pariatur occaecat. In nisi ipsum irure elit esse ullamco. Laborum et ipsum cillum nulla. Sunt adipisicing ipsum eu occaecat sit reprehenderit est cupidatat irure sunt minim. Ut non ullamco sint esse cupidatat amet sint magna cupidatat consequat. Nulla proident consequat laboris duis eu ea dolor duis cillum ipsum. Esse laborum duis sunt ullamco esse eu non eiusmod veniam consequat sint. Ea et aliquip ea exercitation. Eiusmod fugiat proident dolore adipisicing cillum. Deserunt proident ipsum excepteur commodo nisi nulla ut enim magna.')
          ),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20), // Especificamos los márgenes de forma simétrica con un espacio horiontal y vertical dados
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sierra de mis cojones', style: TextStyle(fontWeight: FontWeight.bold),),  // Título
              Text('Mis cojones al viento, Parte de la entrepierna', style: TextStyle(color: Colors.black45),)  // Subtítulo
            ],
          ),

          Expanded(child: Container()), // Widget que nos coloca un widget y lo expande hasta el final, es decir ocupa todo el espacio disponible
                                        // Sirve para row, column y flex

          Icon(Icons.star, color: Colors.red,), // Icono
          Text('41')  // Texto
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.phone, text: 'CALL',), // Widget personalizado para representar un botón.

          Expanded(child: Container()),

          CustomButton(icon: Icons.map_sharp, text: 'ROUTE',),

          Expanded(child: Container()),

          CustomButton(icon: Icons.share, text: 'SHARE',),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;

  const CustomButton({
    Key? key, 
    required this.icon, 
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon, color: Colors.blue,),
        Text(this.text, style: TextStyle(color: Colors.blue),)
      ],
    );
  }
}