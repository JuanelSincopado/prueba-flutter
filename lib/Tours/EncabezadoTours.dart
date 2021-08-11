import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:prueba/providers/ToursProvider.dart';

import 'ImageEncabezadoTour.dart';
import 'SearchTours.dart';

class EncabezadoTours extends StatelessWidget {
  const EncabezadoTours({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Consumer<ToursProvider>(
          builder: (context, toursProvider, widget) {
            return Column(
              children: toursProvider.tours
                  .take(1)
                  .map((e) => Stack(
                        children: [
                          ImageEncabezadoTour(e),
                          Positioned(
                            top: 150,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                e.name,
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ))
                  .toList(),
            );
          },
        ),
        Positioned(
          top: 30,
          right: 20,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 15,
            child: IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.shoppingCart,
                color: Theme.of(context).primaryColor,
                size: 12,
              ),
            ),
          ),
        ),
        Positioned(
          top: 90,
          right: 0,
          child: IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.ellipsisV,
              color: Theme.of(context).primaryColor,
              size: 16,
            ),
            color: Theme.of(context).primaryColor,
          ),
        ),
        SearchTours(),
      ],
    );
  }
}
