import 'package:flutter/material.dart';
import 'package:prueba/home/EncabezadoHome.dart';
import 'package:prueba/home/SearchHome.dart';
import 'package:prueba/home/ToursGastronomicosHome.dart';

class HomeScreen extends StatelessWidget {
  static final String route = "/HomeScreen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EncabezadoHome(),
              SizedBox(height: 30),
              SearchHome(),
              SizedBox(height: 20),
              TourGastronomicosHome()
            ],
          ),
        ),
      ),
    );
  }
}
