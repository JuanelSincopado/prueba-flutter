import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba/providers/AuthProvider.dart';

class BotonLogin extends StatelessWidget {
  const BotonLogin({
    Key? key,
    required GlobalKey<FormState> keyForm,
  })  : _keyForm = keyForm,
        super(key: key);

  final GlobalKey<FormState> _keyForm;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        if (_keyForm.currentState!.validate()) {
          if (await Provider.of<AuthProvider>(context, listen: false)
              .getUsuario()) {
            Navigator.pushReplacementNamed(context, '/MainScreen');
          } else {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("Ocurrió un error")));
          }
        }
      },
      child: Text(
        'Iniciar Sesión',
        style: TextStyle(
          color: Color.fromRGBO(255, 255, 255, 0.8),
          fontSize: 20,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: Color.fromRGBO(0, 208, 235, 1),
        elevation: 0,
        minimumSize: Size(double.infinity, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
