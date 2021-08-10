import 'dart:convert' as convert;
import 'package:flutter/material.dart';
import 'package:prueba/modelos/ModeloTours.dart';
import 'package:http/http.dart' as http;

class ToursProvider with ChangeNotifier {
  List<ModeloTour> _tours = [];
  bool _loading = false;

  bool get loading => _loading;

  set loading(bool loading) {
    _loading = loading;
    notifyListeners();
  }

  List<ModeloTour> get tours => _tours;

  ToursProvider.instance() {
    getTours();
  }

  set tours(List<ModeloTour> tours) {
    _tours = tours;
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
        });
      }
    } catch (e) {
      print(e);
    }
    loading = false;
  }
}
