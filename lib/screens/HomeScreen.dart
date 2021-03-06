import 'package:flutter/material.dart';
import 'package:prueba/home/EncabezadoHome.dart';
import 'package:prueba/home/ListaCardExperiencias.dart';
import 'package:prueba/home/ListaCardTour.dart';
import 'package:prueba/home/SearchHome.dart';
import 'package:prueba/home/TitulosHome.dart';

class HomeScreen extends StatelessWidget {
  static final String route = "/HomeScreen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EncabezadoHome(),
            SizedBox(height: 20),
            SearchHome(),
            SizedBox(height: 20),
            TitulosHome(titulo: 'Tours GastronĂ³micos'),
            SizedBox(height: 20),
            ListaCardTour(),
            SizedBox(height: 20),
            TitulosHome(titulo: 'Nuevas Experiencias'),
            SizedBox(height: 20),
            ListaCardExperiencias(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
