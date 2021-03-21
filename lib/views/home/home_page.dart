import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'controller/home_controller.dart';

class HomePage extends StatefulWidget {
  final HomeController controller;
  HomePage({Key? key, required this.controller}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Observer(
                builder: (_) => Text(
                  "${widget.controller.state.count}",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                widget.controller.onIncrementButtonTap();
              },
              child: Text(
                "increment",
                style: TextStyle(fontSize: 24, color: Colors.blue),
              ),
            ),
            TextButton(
                onPressed: () {
                  widget.controller.onDecrementButtonTap();
                },
                child: Text(
                  "Decrement",
                  style: TextStyle(fontSize: 22, color: Colors.purple),
                ))
          ],
        ),
      ),
    );
  }
}
