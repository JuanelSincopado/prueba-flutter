import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba/providers/ToursProvider.dart';

class TourGastronomicosHome extends StatelessWidget {
  const TourGastronomicosHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final getTours = Provider.of<ToursProvider>(context);

    return Column(
      children: [
        Text(
          'Tours Gastronómicos',
          style: TextStyle(
            color: Color.fromRGBO(45, 78, 96, 1),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Column(
          children: [],
        )
      ],
    );
  }
}
