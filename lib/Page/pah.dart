import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Messeg extends StatefulWidget {
  const Messeg({Key? key}) : super(key: key);

  @override
  State<Messeg> createState() => _MessegState();
}

class _MessegState extends State<Messeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Messeg")),
      body: Container(
        height: 70,
        child: Row(children: [
          Container(
              width: 70,
              margin: EdgeInsets.all(5),
              child: const ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: Image(
                    fit: BoxFit.cover,
                    width: 60,
                    height: 60,
                    image: NetworkImage(
                        'https://media.wired.com/photos/5d09594a62bcb0c9752779d9/1:1/w_1500,h_1500,c_limit/Transpo_G70_TA-518126.jpg'),
                  ))),
          Container(
            width: 300,
            child: Column(children: [
              Expanded(
                  child: Container(
                child: Row(children: [
                  Expanded(
                      flex: 3,
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        padding: const EdgeInsets.all(5),
                        child: const Text(
                          "Yo'ldashev Ravshan",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      )),
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.all(5),
                    alignment: Alignment.bottomRight,
                    child: const Text("23:02"),
                  ))
                ]),
              )),
              Expanded(
                  child: Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(5),
                child: const Text(
                  "Jonkam qattasan?",
                  style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                ),
              ))
            ]),
          ),
          Expanded(
            child: Container(
              width: 70,
              child: const Icon(
                Icons.chevron_right,
                color: Colors.grey,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

Widget _chat(
    {required String? contactName,
    required String? contactMesseg,
    required String? contactImageUrl,
    required String? messegTime}) {
  return Container(
    height: 70,
    child: Row(children: [
      Container(
          width: 70,
          margin: EdgeInsets.all(5),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: Image(
                fit: BoxFit.cover,
                width: 60,
                height: 60,
                image: NetworkImage("$contactImageUrl"),
              ))),
      Container(
        width: 300,
        child: Column(children: [
          Expanded(
              child: Container(
            child: Row(children: [
              Expanded(
                  flex: 3,
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "$contactName",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.all(5),
                alignment: Alignment.bottomRight,
                child: Text("$messegTime"),
              ))
            ]),
          )),
          Expanded(
              child: Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(5),
            child: Text(
              "$contactMesseg",
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
          ))
        ]),
      ),
      Expanded(
        child: Container(
          width: 70,
          child: const Icon(
            Icons.chevron_right,
            color: Colors.grey,
          ),
        ),
      ),
    ]),
  );
}
