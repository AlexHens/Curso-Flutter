

import 'package:flutter/material.dart';
import 'package:preferences_app/widgets/widgets.dart';

import '../share_preferences/preferences.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);

  static const String routerName = 'Home';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Home')
        ),
      ),
      drawer: SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('isDarkmode: ${Preferences.isDarkmode}'),
          Divider(),
          Text('Género: ${Preferences.gender}'),
          Divider(),
          Text('Nombre del usuario: ${Preferences.name}'),
          Divider()
        ],
      )
    );
  }
}