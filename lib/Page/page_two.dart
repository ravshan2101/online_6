import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page two"),
      ),
      body: const Center(child: Text("Page Two")),
      drawer: Drawer(
        child: Column(children: [
          Container(
            margin: const EdgeInsets.only(
              top: 5,
              right: 5,
              left: 5,
              bottom: 5,
            ),
            padding: const EdgeInsets.all(10),
            height: 200,
            color: Colors.grey,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  Text(
                    "Full name",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  Text(
                    "yoldashevravshan710.com",
                    style: TextStyle(
                        color: Colors.black, fontStyle: FontStyle.italic),
                  )
                ]),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('PG4');
        },
        backgroundColor: Colors.green,
        child: Text("P4"),
      ),
    );
  }
}
