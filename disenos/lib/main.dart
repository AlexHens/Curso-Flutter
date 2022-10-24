
import 'package:disenos/screens/home_screen.dart';
import 'package:disenos/screens/scroll_design.dart';
import 'package:disenos/screens/diseno_basico.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen', // Indicamos la página principal de todas las rutas que puede escoger
      theme: ThemeData.dark(),
      routes: {
        'basic_design': (_) => BasicDesingScreen(), // Diseño básico
        'scroll_screen': (_) => ScrollScreen(), // Diseño con scroll
        'home_screen': (_) => HomeScreen(), // Diseño con scroll
      },
    );
  }
}

