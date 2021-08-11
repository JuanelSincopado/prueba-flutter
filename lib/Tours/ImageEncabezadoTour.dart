import 'package:flutter/material.dart';
import 'package:prueba/modelos/ModeloTours.dart';

class ImageEncabezadoTour extends StatelessWidget {
  const ImageEncabezadoTour(
    this.tour, {
    Key? key,
  }) : super(key: key);

  final ModeloTour tour;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          child: Image.network(
            this.tour.picture,
            height: 230,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
