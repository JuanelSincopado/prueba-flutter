import 'package:flutter/material.dart';
import 'package:prueba/Tours/EncabezadoTours.dart';

class ToursScreen extends StatelessWidget {
  const ToursScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EncabezadoTours(),
      ],
    );
  }
}
