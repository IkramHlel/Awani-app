import 'package:awani_app/src/pages/sizeConfig.dart';
import 'package:flutter/material.dart';
import './src/pages/styling.dart';
import './src/pages/sizeConfig.dart';
import 'src/pages/mainScreens/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Awani app',
          theme: AppTheme.lightTheme,
          home: SplashScreen(),
        );
      });
    });
  }
}
