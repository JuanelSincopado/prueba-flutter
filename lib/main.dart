import 'package:flutter/material.dart';
import 'package:prueba/providers/ToursProvider.dart';
import 'package:prueba/screens/HomeScreen.dart';
import 'package:prueba/screens/LoginScreen.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'package:prueba/providers/AuthProvider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ToursProvider.instance()),
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color.fromRGBO(157, 181, 194, 1),
          accentColor: Color.fromRGBO(157, 181, 194, 1),
          fontFamily: 'OpenSans',
          primaryColorBrightness: Brightness.light,
          brightness: Brightness.light,
          accentColorBrightness: Brightness.light,
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Color.fromRGBO(45, 78, 96, 1)),
            bodyText2: TextStyle(color: Color.fromRGBO(45, 78, 96, 1)),
          ),
          iconTheme: IconThemeData(
            color: Color.fromRGBO(45, 78, 96, 1),
          ),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => LoginScreen(),
          '/HomeScreen': (context) => HomeScreen(),
        },
      ),
    );
  }
}
