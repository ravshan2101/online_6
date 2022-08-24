import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UygaVazifa extends StatefulWidget {
  const UygaVazifa({Key? key}) : super(key: key);

  @override
  State<UygaVazifa> createState() => _UygaVazifaState();
}

class _UygaVazifaState extends State<UygaVazifa> {
  PageController? pageController1;
  int select1 = 0;
  @override
  void initState() {
    super.initState();
    pageController1 = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Telegram Demo")),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
          UserAccountsDrawerHeader(
              accountName: const Text(
                "Ravshan",
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: const Text(
                "ravshan@gmail.com",
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                child: Image.network(
                  'https://images.unsplash.com/photo-1494976388531-d1058494cdd8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              )),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://images.immediate.co.uk/production/volatile/sites/4/2021/08/mountains-7ddde89.jpg?quality=90&resize=768,574',
                      ),
                      fit: BoxFit.cover))),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text("Group"),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: const Icon(Icons.call),
            title: const Text("Phone"),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ]),
      ),
      body: PageView(
          controller: pageController1,
          onPageChanged: (int index) {
            setState(() {
              select1 = index;
            });
          },
          children: [
            Container(
              color: Colors.orange,
            ),
            Container(
              color: Colors.white,
              child: SizedBox(
                  child: ListView(
                children: [
                  _chat(
                      contactName: "Ravshan",
                      contactMesseg: "Qattasan jonka",
                      contactImageUrl:
                          'https://media.wired.com/photos/5d09594a62bcb0c9752779d9/1:1/w_1500,h_1500,c_limit/Transpo_G70_TA-518126.jpg',
                      messegTime: "23:07"),
                  _chat(
                      contactName: "Ravshan",
                      contactMesseg: "Qattasan jonka",
                      contactImageUrl:
                          'https://media.wired.com/photos/5d09594a62bcb0c9752779d9/1:1/w_1500,h_1500,c_limit/Transpo_G70_TA-518126.jpg',
                      messegTime: "23:07"),
                  _chat(
                      contactName: "Ravshan",
                      contactMesseg: "Qattasan jonka",
                      contactImageUrl:
                          'https://media.wired.com/photos/5d09594a62bcb0c9752779d9/1:1/w_1500,h_1500,c_limit/Transpo_G70_TA-518126.jpg',
                      messegTime: "23:07"),
                  _chat(
                      contactName: "Ravshan",
                      contactMesseg: "Qattasan jonka",
                      contactImageUrl:
                          'https://media.wired.com/photos/5d09594a62bcb0c9752779d9/1:1/w_1500,h_1500,c_limit/Transpo_G70_TA-518126.jpg',
                      messegTime: "23:07"),
                  _chat(
                      contactName: "Javoxir",
                      contactMesseg: "Qattasan jonka",
                      contactImageUrl:
                          'https://media.wired.com/photos/5d09594a62bcb0c9752779d9/1:1/w_1500,h_1500,c_limit/Transpo_G70_TA-518126.jpg',
                      messegTime: "23:07"),
                  _chat(
                      contactName: "Ravshan",
                      contactMesseg: "Qattasan jonka",
                      contactImageUrl:
                          'https://media.wired.com/photos/5d09594a62bcb0c9752779d9/1:1/w_1500,h_1500,c_limit/Transpo_G70_TA-518126.jpg',
                      messegTime: "23:07"),
                  _chat(
                      contactName: "Ravshan",
                      contactMesseg: "Qattasan jonka",
                      contactImageUrl:
                          'https://media.wired.com/photos/5d09594a62bcb0c9752779d9/1:1/w_1500,h_1500,c_limit/Transpo_G70_TA-518126.jpg',
                      messegTime: "23:07"),
                  _chat(
                      contactName: "Ravshan",
                      contactMesseg: "Qattasan jonka",
                      contactImageUrl:
                          'https://media.wired.com/photos/5d09594a62bcb0c9752779d9/1:1/w_1500,h_1500,c_limit/Transpo_G70_TA-518126.jpg',
                      messegTime: "23:07"),
                  _chat(
                      contactName: "Ravshan",
                      contactMesseg: "Qattasan jonka",
                      contactImageUrl:
                          'https://media.wired.com/photos/5d09594a62bcb0c9752779d9/1:1/w_1500,h_1500,c_limit/Transpo_G70_TA-518126.jpg',
                      messegTime: "23:07"),
                  _chat(
                      contactName: "Ravshan",
                      contactMesseg: "Qattasan jonka",
                      contactImageUrl:
                          'https://media.wired.com/photos/5d09594a62bcb0c9752779d9/1:1/w_1500,h_1500,c_limit/Transpo_G70_TA-518126.jpg',
                      messegTime: "23:07")
                ],
              )),
            ),
            Container(
              color: Colors.yellow,
            )
          ]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.pink,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Messeg",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notifications",
          ),
        ],
        currentIndex: select1,
        selectedItemColor: Colors.amber[800],
        onTap: (int index) {
          setState(() {
            select1 = index;
            pageController1?.animateToPage(
              index,
              duration: const Duration(microseconds: 200),
              curve: Curves.easeIn,
            );
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("Mes");
        },
        child: const Text("M"),
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
