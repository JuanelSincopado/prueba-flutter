import 'package:flutter/material.dart';

class TitulosHome extends StatelessWidget {
  final String titulo;

  TitulosHome({
    Key? key,
    required this.titulo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        this.titulo,
        style: TextStyle(
          color: Color.fromRGBO(45, 78, 96, 1),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
