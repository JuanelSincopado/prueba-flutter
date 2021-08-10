import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:prueba/providers/AuthProvider.dart';

class EncabezadoHome extends StatelessWidget {
  const EncabezadoHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Consumer<AuthProvider>(
          builder: (context, authProvider, widget) {
            return Text(
              '¡Buenos días ${authProvider.usuario!.firstName}!',
              style: TextStyle(
                fontSize: 22,
                color: Color.fromRGBO(45, 78, 96, 1),
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.shoppingCart,
            color: Color.fromRGBO(45, 78, 96, .3),
          ),
        ),
      ],
    );
  }
}
