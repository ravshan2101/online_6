import 'package:flutter/material.dart';

class UI5 extends StatefulWidget {
  const UI5({Key? key}) : super(key: key);

  @override
  State<UI5> createState() => _UI5State();
}

class _UI5State extends State<UI5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("UI5")),
      body: SizedBox(
          child: GridView.count(
        crossAxisCount: 2,
        children: [
          _itemList(title: "Salim", images: "assets/images/ic_images.jpeg"),
          _itemList(title: "Salim", images: "assets/images/ic_images.jpeg"),
          _itemList(title: "Salim", images: "assets/images/ic_images.jpeg"),
          _itemList(title: "Salim", images: "assets/images/ic_images.jpeg"),
          _itemList(title: "Salim", images: "assets/images/ic_images.jpeg"),
          _itemList(title: "Salim", images: "assets/images/ic_images.jpeg"),
          _itemList(title: "Salim", images: "assets/images/ic_images.jpeg"),
          _itemList(title: "Salim", images: "assets/images/ic_images.jpeg"),
          _itemList(title: "Salim", images: "assets/images/ic_images.jpeg"),
          _itemList(title: "Salim", images: "assets/images/ic_images.jpeg"),
          _itemList(title: "Salim", images: "assets/images/ic_images.jpeg"),
          _itemList(title: "Salim", images: "assets/images/ic_images.jpeg"),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("UI6");
        },
        child: Text("UI6"),
      ),
    );
  }
}

Widget _itemList({title, images}) {
  return Container(
    color: Colors.red,
    margin: const EdgeInsets.all(5),
    padding: const EdgeInsets.all(10),
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image(
        width: 60,
        height: 60,
        fit: BoxFit.cover,
        image: AssetImage(images),
      ),
      const SizedBox(
        height: 5,
      ),
      Text(title),
    ]),
  );
}
