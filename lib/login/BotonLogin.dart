import 'package:flutter/material.dart';

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
      onPressed: () {
        if (_keyForm.currentState!.validate()) {
          AlertDialog(
            title: Text('listo'),
            content: Text('ici'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, 'Cancel'),
                child: Text('Ok'),
              )
            ],
          );
        }
      },
      child: Text(
        'Iniciar Sesión',
        style:
            TextStyle(color: Color.fromRGBO(255, 255, 255, 0.8), fontSize: 20),
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
