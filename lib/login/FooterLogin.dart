import 'package:flutter/material.dart';

class FooterLogin extends StatelessWidget {
  const FooterLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '¿No tienes cuenta?',
          style: TextStyle(
            color: Color.fromRGBO(153, 179, 191, 1),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Registrate',
            style: TextStyle(
              color: Color.fromRGBO(0, 208, 235, 1),
            ),
          ),
        ),
      ],
    );
  }
}
