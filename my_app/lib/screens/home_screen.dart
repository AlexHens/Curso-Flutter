
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const int counter = 10;

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("HomeScreen")
          ),
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text("Clicks counter", 
            style: TextStyle(
              fontSize: 30,

            ),),
            Text('$counter', style: TextStyle(fontSize: 30,),),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add
        ),
        onPressed: (){
          print('Hola mundo');
          //counter++;
        },),
    );
  }

}