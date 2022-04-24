
import 'package:flutter/material.dart';

import 'package:fl_components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {

  
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 200;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Slider && Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 100,
            max: 600,
            activeColor: AppTheme.primary,
            value: _sliderValue, 
            onChanged: _sliderEnable?  (value) {
              _sliderValue = value;
              setState(() {});
            }
            : null
          ),

          // Checkbox(
          //   value: _sliderEnable, 
          //   onChanged: (value) {
          //     _sliderEnable = value ?? true;

          //     setState(() {});
          //   }
          // ),

          CheckboxListTile(
            title: const Text('Habilitar Slider'),
            activeColor: AppTheme.primary,
            value: _sliderEnable, 
            onChanged: (value) {
              setState(() {
                _sliderEnable = value ?? true;
              });
            }
          ),

          // Switch(
          //   value: _sliderEnable, 
          //   onChanged: (value) {
          //     setState(() {
          //       _sliderEnable = value;
          //     });
          //   }
          // ),

          SwitchListTile.adaptive(
            title: const Text('Habilitar Slider'),
            activeColor: AppTheme.primary,
            value: _sliderEnable, 
            onChanged: (value) {
              setState(() {
                _sliderEnable = value;
              });
            }
          ),

          const AboutListTile(),

          const SizedBox(height: 50,),
      
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://i.pinimg.com/550x/68/2d/1a/682d1afca5117b04d612e21c1da70c16.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),

          const SizedBox(height: 100,)
        ],
      )
    );
  }
}