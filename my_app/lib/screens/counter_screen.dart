
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 10;

  @override
  Widget build(BuildContext context) {


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
          children: <Widget>[
            Text("Clicks counter", 
            style: TextStyle(
              fontSize: 30,

            ),),
            Text('$counter', style: TextStyle(fontSize: 30,),),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(
              Icons.exposure_plus_1_outlined
            ),
            onPressed: (){
              //print('Hola mundo');
              setState(() {
                counter++;
              });
            },),

            //SizedBox(width: 20,),

            FloatingActionButton(
            child: const Icon(
              Icons.exposure_zero_outlined
            ),
            onPressed: (){
              //print('Hola mundo');
              setState(() {
                counter=0;
              });
            },),
            
            //SizedBox(width: 20,),

            FloatingActionButton(
            child: const Icon(
              Icons.exposure_minus_1_outlined
            ),
            onPressed: (){
              //print('Hola mundo');
              setState(() {
                counter--;
              });
            },),
        ],
      ),
    );
  }
}