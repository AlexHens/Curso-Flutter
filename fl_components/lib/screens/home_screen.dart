

import 'package:flutter/material.dart';

import 'package:fl_components/routes/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes en Flutter '),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(menuOptions[index].nombre),
          leading: Icon(menuOptions[index].icon, color: AppTheme.primary,),
          onTap: () {

            // final route = MaterialPageRoute(
            //   builder: (context) => ListView1Screen(),
            // );

            // Navigator.push(context, route);

            Navigator.pushNamed(context, menuOptions[index].route);
          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: menuOptions.length
        )
    );
  }
}