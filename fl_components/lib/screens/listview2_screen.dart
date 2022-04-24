import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

  final options = const['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy'];
   
  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Tipo 2'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo,),
          onTap: () {
            final game = options[index];
            print(game);
          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: options.length
        )
    );
  }
}