import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba/home/EncabezadoHome.dart';
import 'package:prueba/home/SearchHome.dart';
import 'package:prueba/home/CardTours.dart';
import 'package:prueba/modelos/ModeloTours.dart';
import 'package:prueba/providers/ToursProvider.dart';

class HomeScreen extends StatelessWidget {
  static final String route = "/HomeScreen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EncabezadoHome(),
              SizedBox(height: 30),
              SearchHome(),
              SizedBox(height: 20),
              Text(
                'Tours Gastronómicos',
                style: TextStyle(
                  color: Color.fromRGBO(45, 78, 96, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 25),
              Consumer<ToursProvider>(
                builder: (context, toursProvider, widget) {
                  return Container(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
