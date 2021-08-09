import 'package:flutter/material.dart';

class EncabezadoLogin extends StatelessWidget {
  const EncabezadoLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Iniciar Sesión',
          style: TextStyle(
            color: Color.fromRGBO(45, 78, 96, 1),
            fontSize: 30,
          ),
        ),
        Text(
          'Añade tus datos para inscribirte',
          style: TextStyle(
            color: Color.fromRGBO(45, 78, 96, .5),
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
