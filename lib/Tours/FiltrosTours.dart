import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba/providers/ToursProvider.dart';

class FiltrosTours extends StatelessWidget {
  const FiltrosTours({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _BotonFiltroCategoria(categoria: "Todos"),
          _BotonFiltroCategoria(categoria: "Gastronómicos"),
          _BotonFiltroCategoria(categoria: "Turísticos"),
          _BotonFiltroCategoria(categoria: "Caminata"),
        ],
      ),
    );
  }
}

class _BotonFiltroCategoria extends StatelessWidget {
  const _BotonFiltroCategoria({Key? key, required this.categoria})
      : super(key: key);

  final String categoria;
  @override
  Widget build(BuildContext context) {
    final toursProvider = Provider.of<ToursProvider>(context);
    bool seleccionado = toursProvider.category == categoria;
    return TextButton(
      onPressed: () {
        toursProvider.category = categoria;
        toursProvider.filterTours();
      },
      child: Text(
        categoria,
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontWeight: seleccionado ? FontWeight.bold : FontWeight.w300,
        ),
      ),
    );
  }
}
