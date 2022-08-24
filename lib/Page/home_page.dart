import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void iosdialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: const Text("Logout"),
            content: const Text("Are you sure want to logout"),
            actions: [
              MaterialButton(
                onPressed: (() {
                  Navigator.of(context).pop();
                }),
                child: const Text("Cansel"),
              ),
              MaterialButton(
                onPressed: (() {
                  Navigator.of(context).pushNamed('PG2');
                }),
                child: const Text("Confira"),
              ),
            ],
          );
        });
  }

  void androiddilog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Logout"),
            content: const Text("Are you sure you want to logout"),
            actions: [
              MaterialButton(
                  onPressed: (() {
                    Navigator.of(context).pop();
                  }),
                  child: const Text("Cancel")),
              MaterialButton(
                onPressed: (() {
                  Navigator.of(context).pop();
                }),
                child: const Text("Confira"),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: MaterialButton(
        onPressed: () {
          if (Platform.isAndroid) {
            androiddilog();
          } else if (Platform.isIOS) {
            iosdialog();
          }
        },
        color: Colors.red,
        child: const Text("Open Dialog"),
      )),
    );
  }
}
