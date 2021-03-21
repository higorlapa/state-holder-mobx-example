import 'package:flutter/material.dart';
import 'package:state_holder_mobx_example/views/home/controller/home_controller.dart';
import 'package:state_holder_mobx_example/views/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(
        controller: HomeControllerImpl(),
      ),
    );
  }
}
