import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              child: const Text('MDL', style: TextStyle(color: Colors.white),),
              backgroundColor: Colors.green[900]
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
           maxRadius: 110,
           backgroundImage: NetworkImage('https://www.nakamanga.net/wp-content/uploads/2020/12/Monkey-D-Luffy-Una-pieza.png'),
         ),
      )
    );
  }
}