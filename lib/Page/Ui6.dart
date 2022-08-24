import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UI6 extends StatefulWidget {
  const UI6({Key? key}) : super(key: key);

  @override
  State<UI6> createState() => _UI6State();
}

class _UI6State extends State<UI6> {
  PageController? pageController;
  int SelectPage = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("UI6")),
      body: PageView(
        controller: pageController,
        onPageChanged: (int index) {
          setState(() {
            SelectPage = index;
          });
        },
        children: [
          Container(
            color: Colors.pink,
            child: const Center(
              child: Text("Page 1"),
            ),
          ),
          Container(
            color: Colors.green,
            child: const Center(
              child: Text("Page 1"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: "Busness"),
        ],
        currentIndex: SelectPage,
        selectedItemColor: Colors.amber[800],
        onTap: (int index) {
          setState(() {
            SelectPage = index;
            pageController?.animateToPage(index,
                duration: const Duration(microseconds: 200),
                curve: Curves.easeInSine);
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("UI7");
        },
        child: const Text("UI7"),
      ),
    );
  }
}
