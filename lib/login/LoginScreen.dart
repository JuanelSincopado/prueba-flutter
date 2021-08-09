import 'package:flutter/material.dart';
import 'BotonLogin.dart';
import 'EncabezadoLogin.dart';
import 'FooterLogin.dart';
import 'FormLogin.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              EncabezadoLogin(),
              SizedBox(
                height: 50,
              ),
              FormLogin(keyForm: _keyForm),
              Spacer(),
              BotonLogin(keyForm: _keyForm),
              SizedBox(
                height: 20,
              ),
              FooterLogin()
            ],
          ),
        ),
      ),
    );
  }
}
