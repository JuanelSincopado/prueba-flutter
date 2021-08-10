import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FormLogin extends StatelessWidget {
  FormLogin({
    Key? key,
    required GlobalKey<FormState> keyForm,
  })  : _keyForm = keyForm,
        super(key: key);

  final GlobalKey<FormState> _keyForm;
  final border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(
      color: Color.fromRGBO(157, 181, 194, 1),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _keyForm,
      child: Column(
        children: [
          TextFormField(
            initialValue: "hola@correo.com",
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Correo',
              hintStyle: TextStyle(
                color: Color.fromRGBO(45, 78, 96, .3),
              ),
              border: this.border,
              suffixIcon: Container(
                padding: EdgeInsets.only(top: 5),
                child: FaIcon(
                  FontAwesomeIcons.solidEnvelope,
                  color: Color.fromRGBO(157, 181, 194, 1),
                  size: 30,
                ),
              ),
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Los campos son obligatorios';
              } else if (!EmailValidator.validate(value)) {
                return 'Correo no válido';
              }
              return null;
            },
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            initialValue: "123456",
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Contraseña',
              hintStyle: TextStyle(
                color: Color.fromRGBO(45, 78, 96, .3),
              ),
              border: this.border,
              suffixIcon: Container(
                padding: EdgeInsets.only(top: 5),
                child: FaIcon(
                  FontAwesomeIcons.key,
                  color: Color.fromRGBO(157, 181, 194, 1),
                  size: 30,
                ),
              ),
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
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
