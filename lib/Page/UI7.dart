import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UI7 extends StatefulWidget {
  const UI7({Key? key}) : super(key: key);

  @override
  State<UI7> createState() => _UI7State();
}

class _UI7State extends State<UI7> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          body: TabBarView(children: [
            Container(
              color: Colors.red,
              child: Center(child: Text("Home")),
            ),
            Container(
              color: Colors.green,
              child: Center(child: Text("Scool")),
            )
          ]),
          appBar: AppBar(
              bottom: const TabBar(tabs: [
                Tab(icon: Icon(Icons.home), text: "Home"),
                Tab(icon: Icon(Icons.school), text: "School")
              ]),
              title: const Text("UI7")),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).pushNamed("UY");
            },
            child: Text("UY"),
          ),
        ));
  }
}
