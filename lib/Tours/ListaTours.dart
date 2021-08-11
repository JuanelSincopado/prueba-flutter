import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba/providers/ToursProvider.dart';

import 'CardTours.dart';

class ListaTours extends StatelessWidget {
  const ListaTours({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final toursProvider = Provider.of<ToursProvider>(context);

    toursProvider.filteredTours.forEach((element) {
      print(element.name);
    });

    return Expanded(
      child: Consumer<ToursProvider>(
        builder: (context, toursProvider, widget) {
          return ListView.builder(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 60),
            itemCount: toursProvider.filteredTours.length,
            itemBuilder: (context, index) {
              return CardTour(tour: toursProvider.filteredTours[index]);
            },
          );
        },
      ),
    );
  }
}
