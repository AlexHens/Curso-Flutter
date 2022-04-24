

import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/models/models.dart';

class AppRoutes{
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // MenuOption(route: 'home', nombre: 'Home Screen', screen: const HomeScreen(), icon: Icons.home),
    MenuOption(route: 'listview1', nombre: 'ListView tipo 1', screen: const ListView1Screen(), icon: Icons.list),
    MenuOption(route: 'listview2', nombre: 'ListView tipo 2', screen: const ListView2Screen(), icon: Icons.list_alt),
    MenuOption(route: 'alert', nombre: 'Alertas - Alerts', screen: const AlertScreen(), icon: Icons.add_alert),
    MenuOption(route: 'card', nombre: 'Tarjetas - Cards', screen: const CardScreen(), icon: Icons.card_membership_outlined),
    MenuOption(route: 'avatar', nombre: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated', nombre: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_circle_outline),
    MenuOption(route: 'inputs', nombre: 'Text Inputs', screen: const InputsScreen(), icon: Icons.input_rounded),
    MenuOption(route: 'slider', nombre: 'Slider && Checks', screen: const SliderScreen(), icon: Icons.slideshow_sharp),
    MenuOption(route: 'listviewbuilder', nombre: 'InfiniteScroll && Pull to refresh', screen: const ListViewBuilderScreen(), icon: Icons.build_circle_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home' : (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route : (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //       'home'      : (BuildContext context) => HomeScreen(),
  //       'listview1' : (BuildContext context) => ListView1Screen(),
  //       'listview2' : (BuildContext context) => ListView2Screen(),
  //       'alert'     : (BuildContext context) => AlertScreen(),
  //       'card'      : (BuildContext context) => CardScreen()
  //     };
  
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
      return MaterialPageRoute(
        builder: (context) => AlertScreen(),
        );
  }
}