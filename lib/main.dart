import 'package:flutter/material.dart';
import 'package:smartqueue/constants.dart';
import 'package:smartqueue/screens/homeparent.dart';
import 'package:flutter/services.dart';
import 'package:smartqueue/screens/loginscreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white.withAlpha(0),
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: themepink,
        fontFamily: 'SansPro',
      ),
      home: LoginScreen(),
      // home: HomeParent(),
    );
  }
}
