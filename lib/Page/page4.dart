import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PG4 extends StatefulWidget {
  const PG4({Key? key}) : super(key: key);

  @override
  State<PG4> createState() => _PG4State();
}

class _PG4State extends State<PG4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("PG4")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              height: 250,
            ),
            Container(
              color: Colors.blue,
              height: 250,
            ),
            Container(
              color: Colors.yellow,
              height: 250,
            ),
            Container(
              color: Colors.green,
              height: 250,
            ),
            Container(
              color: Colors.yellow,
              height: 250,
            ),
            Container(
              color: Colors.black,
              height: 250,
            ),
            Container(
              color: Colors.red,
              height: 250,
            ),
            Container(
              color: Colors.yellow,
              height: 250,
            ),
            Container(
              color: Colors.green,
              height: 250,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("UI5");
        },
        child: const Text("U5"),
      ),
    );
  }
}
