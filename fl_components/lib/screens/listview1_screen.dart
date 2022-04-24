import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

  final options = const['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy'];
   
  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Tipo 1'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[

          ...options.map(
            (game) => ListTile(
              leading: Icon(Icons.access_alarms_sharp),
              title: Text(game),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            )
            ).toList()
          
          // ListTile(
          //   leading: Icon(Icons.access_time_sharp),
          //   title: Text('Hola mundo'),
          // )
        ],
      )
    );
  }
}