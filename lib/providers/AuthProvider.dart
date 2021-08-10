import 'dart:convert' as convert;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:prueba/modelos/ModeloUsuario.dart';

class AuthProvider with ChangeNotifier {
  ModeloUsuario? _usuario;
  bool _loading = false;

  bool get loading => _loading;

  set loading(bool loading) {
    _loading = loading;
    notifyListeners();
  }

  ModeloUsuario? get usuario => _usuario;

  set usuario(ModeloUsuario? usuario) {
    _usuario = usuario;
    notifyListeners();
  }

  Future<bool> getUsuario() async {
    loading = true;
    try {
      var url = Uri.https(
          '969rgz78f9.execute-api.us-east-1.amazonaws.com', '/dev/api/user');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        final jsonResponse = convert.jsonDecode(response.body);
        usuario = ModeloUsuario.fromJson(jsonResponse);
        loading = false;
        return true;
      }
    } catch (e) {
      print(e);
    }
    loading = false;
    return false;
  }
}
