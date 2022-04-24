

import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [

          CustomCardType1(),
          SizedBox(height: 20,),
          CustomCardType2(imageURL: 'https://www.lenda.net/wp-content/uploads/2018/09/travel-landscape-01.jpg',),
          SizedBox(height: 20,),
          CustomCardType2(imageURL: 'https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg',),
          SizedBox(height: 20,),
          CustomCardType2(imageURL: 'https://mymodernmet.com/wp/wp-content/uploads/2020/11/International-Landscape-Photographer-Year-PhotographER-1st-KelvinYuen-2.jpg',),
          SizedBox(height: 20,),
          CustomCardType2(name:'Un hermoso paisaje', imageURL: 'https://mymodernmet.com/wp/wp-content/uploads/2020/02/Landscape-Photographer-of-the-Year-Sander-Grefte.jpg',),
          SizedBox(height: 100,),

        ],
      )
    );
  }
}

