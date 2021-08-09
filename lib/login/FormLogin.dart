import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({
    Key? key,
    required GlobalKey<FormState> keyForm,
  })  : _keyForm = keyForm,
        super(key: key);

  final GlobalKey<FormState> _keyForm;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _keyForm,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Correo',
              hintStyle: TextStyle(
                color: Color.fromRGBO(45, 78, 96, .3),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Color.fromRGBO(157, 181, 194, 1),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Color.fromRGBO(157, 181, 194, 1),
                ),
              ),
              suffixIcon: Icon(
                Icons.email,
                color: Color.fromRGBO(157, 181, 194, 1),
                size: 35,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Los campos son obligatorios';
              }
              return null;
            },
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Contraseña',
              hintStyle: TextStyle(
                color: Color.fromRGBO(45, 78, 96, .3),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Color.fromRGBO(157, 181, 194, 1),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Color.fromRGBO(157, 181, 194, 1),
                ),
              ),
              suffixIcon: Container(
                padding: EdgeInsets.only(top: 5),
                child: FaIcon(
                  FontAwesomeIcons.key,
                  color: Color.fromRGBO(157, 181, 194, 1),
                  size: 30,
                ),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Los campos son obligatorios';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
