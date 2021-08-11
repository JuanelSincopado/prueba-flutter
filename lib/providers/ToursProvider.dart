import 'dart:convert' as convert;
import 'package:flutter/material.dart';
import 'package:prueba/modelos/ModeloTours.dart';
import 'package:http/http.dart' as http;

class ToursProvider with ChangeNotifier {
  List<ModeloTour> _tours = [];
  List<ModeloTour> _filteredTours = [];
  String _query = "";
  String _category = "Todos";

  bool _loading = false;

  bool get loading => _loading;

  set loading(bool loading) {
    _loading = loading;
    notifyListeners();
  }

  List<ModeloTour> get tours => _tours;
  List<ModeloTour> get filteredTours => _filteredTours;
  String get query => _query;
  String get category => _category;

  ToursProvider.instance() {
    getTours();
  }

  set tours(List<ModeloTour> tours) {
    _tours = tours;
    notifyListeners();
  }

  set filteredTours(List<ModeloTour> filteredTours) {
    _filteredTours = filteredTours;
    notifyListeners();
  }

  set query(String query) {
    _query = query;
    notifyListeners();
  }

  set category(String category) {
    _category = category;
    notifyListeners();
  }

  Future<void> getTours() async {
    loading = true;
    try {
      var url = Uri.https(
          '969rgz78f9.execute-api.us-east-1.amazonaws.com', '/dev/api/tours');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        final jsonResponse = convert.jsonDecode(response.body);
        tours = jsonResponse.map<ModeloTour>((element) {
          return ModeloTour.fromJson(element);
        }).toList();
        filteredTours = tours;
      }
    } catch (e) {
      print(e);
    }
    loading = false;
  }

  void filterTours() {
    List<ModeloTour> result = _tours;

    if (category != "Todos") {
      result =
          result.where((tour) => tour.perteneceACategoria(category)).toList();
    }

    if (query.isNotEmpty) {
      result = result.where((tour) => tour.contieneQuery(query)).toList();
    }

    filteredTours = result;
  }
}
