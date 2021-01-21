import 'package:flutter/material.dart';
import 'package:my_first_app/src/pages/login_page.dart';
import 'src/models/cat.dart';

void main() {
  runApp(MyApp());

  // var cat1 = Cat('Michi');
  // cat1.age = 7;
  // print(cat1);

  // if (cat1 is Cat) {
  //   cat1.makeNoise();
  // }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: LoginPage.id,
      routes: {
        LoginPage.id: (context) => LoginPage()
      },
    );
  }
}
