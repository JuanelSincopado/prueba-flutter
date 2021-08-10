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
          primaryColor: Colors.blue,
          primarySwatch: Colors.blue,
          fontFamily: 'OpenSans',
          primaryColorBrightness: Brightness.light,
          brightness: Brightness.light,
          accentColorBrightness: Brightness.light,
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
