
import 'package:flutter/material.dart';

import 'package:fl_components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo, color: AppTheme.primary,),
            title: Text('Soy un título'),
            subtitle: Text('Soy un subtítulo'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){

                  }, 
                  child: Text('Cancelar'),
                ),

                TextButton(
                  onPressed: (){

                  }, 
                  child: Text('Ok')
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}