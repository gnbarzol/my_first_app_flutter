import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login_page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Image.asset(
                'images/logo.png',
                height: 300,
              ),
            ),
            _userTextField(),
            SizedBox(height: 15),
            _passwordTextField(),
            SizedBox(height: 60),
            _bottomLogin(),
          ],
        ),
      ),
    ));
  }

  Widget _userTextField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(Icons.email),
          hintText: 'Ingrese correo electronico',
          helperText: 'garybarzola@correo.com',
          labelText: 'Correo electronico',
        ),
        onChanged: (text) {
          print("First text field: $text");
        },
      ),
    );
  }

  Widget _passwordTextField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(Icons.lock),
          // border: InputBorder.none,
          hintText: 'Ingrese contraseña',
          labelText: 'Contraseña',
        ),
        onChanged: (text) {
          print("Second text field: $text");
        },
      ),
    );
  }

  Widget _bottomLogin() {
    return RaisedButton(
      onPressed: () {},
      textColor: Colors.black,
      color: Colors.amber,
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: Container(
        decoration: const BoxDecoration(),
        padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
        child: const Text('Iniciar sesión',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
