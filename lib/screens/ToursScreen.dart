import 'package:flutter/material.dart';
import 'package:prueba/Tours/EncabezadoTours.dart';
import 'package:prueba/Tours/FiltrosTours.dart';
import 'package:prueba/Tours/ListaTours.dart';

class ToursScreen extends StatelessWidget {
  const ToursScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EncabezadoTours(),
        SizedBox(height: 20),
        FiltrosTours(),
        ListaTours(),
      ],
    );
  }
}
