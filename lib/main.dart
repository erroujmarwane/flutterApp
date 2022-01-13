import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real_estate/provider/UserProvider.dart';
import 'package:real_estate/screens/login_screen.dart';
import 'package:real_estate/screens/slider.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);


final ThemeData genetalTheme = ThemeData(
    primaryColor: Color(0xff2686a1),);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserProvider(),
        ),
      ],
      child: MaterialApp(
      title: 'Real Estate',
      theme: genetalTheme,
      home:  Sliderimg(),
      ),
    );
  }
}
