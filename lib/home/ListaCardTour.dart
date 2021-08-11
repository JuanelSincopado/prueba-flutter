import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba/modelos/ModeloTours.dart';
import 'package:prueba/providers/ToursProvider.dart';

import 'CardTours.dart';

class ListaCardTour extends StatelessWidget {
  const ListaCardTour({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ToursProvider>(
      builder: (context, toursProvider, widget) {
        return Container(
          padding: EdgeInsets.only(left: 20),
          height: MediaQuery.of(context).size.width * 0.7 - 60,
          child: ListView.separated(
            separatorBuilder: (_, __) => SizedBox(width: 20),
            scrollDirection: Axis.horizontal,
            itemCount: toursProvider.tours.length,
            itemBuilder: (context, index) {
              ModeloTour tour = toursProvider.tours[index];
              return CardTourHome(tour);
            },
          ),
        );
      },
    );
  }
}
