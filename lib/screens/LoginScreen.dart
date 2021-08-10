import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba/providers/AuthProvider.dart';
import '../login/BotonLogin.dart';
import '../login/EncabezadoLogin.dart';
import '../login/FooterLogin.dart';
import '../login/FormLogin.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _keyForm = GlobalKey<FormState>();
    final authProvider = Provider.of<AuthProvider>(context);

    return Stack(
      children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EncabezadoLogin(),
                  SizedBox(height: 50),
                  FormLogin(keyForm: _keyForm),
                  Spacer(),
                  BotonLogin(keyForm: _keyForm),
                  SizedBox(height: 20),
                  FooterLogin()
                ],
              ),
            ),
          ),
        ),
        if (authProvider.loading)
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black.withOpacity(0.5),
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
      ],
    );
  }
}
