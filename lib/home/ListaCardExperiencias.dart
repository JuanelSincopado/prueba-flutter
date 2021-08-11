import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba/home/CardExperiencias.dart';
import 'package:prueba/providers/ToursProvider.dart';

class ListaCardExperiencias extends StatelessWidget {
  const ListaCardExperiencias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ToursProvider>(
      builder: (context, toursProvider, widget) {
        return Column(
          children: toursProvider.tours
              .take(2)
              .map((e) => Column(
                    children: [
                      CardExperiencias(e),
                      SizedBox(height: 10),
                    ],
                  ))
              .toList(),
        );
      },
    );
  }
}
