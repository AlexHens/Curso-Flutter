
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/theme/app_theme.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context){

    showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text('título'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de la columna'),
              SizedBox(height: 10),
              FlutterLogo(size: 100,)
            ],
          ),
          actions: [

            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Cancelar', style: TextStyle(color: Colors.red),)
            ),
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Ok')
            )

          ],
        );
      }
    );

  }

  void displayDialogAndroid(BuildContext context){

    showDialog(
      barrierDismissible: false,  // Quitar alerta pinchando en la sombra o no
      context: context, 
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('título'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de la columna'),
              SizedBox(height: 10),
              FlutterLogo(size: 100,)
            ],
          ),
          actions: [

            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Cancelar', style: TextStyle(color: Colors.red),)
            ),
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Ok')
            )

          ],
        );
      }
    );

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
           child: const Padding(
             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
             child: Text('Mostrar alerta', style: TextStyle(fontSize: 16),),
           ),
           onPressed: () => Platform.isAndroid 
              ? displayDialogAndroid(context)
              : displayDialogIOS(context)
         )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        }
      ),
    );
  }
}