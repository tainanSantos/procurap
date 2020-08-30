import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageViewController,
        children: [
          Container(
            child: Container(

              child: Padding(
                // padding: const EdgeInsets.symmetric(horizontal: 15.0),
                padding: const EdgeInsets.only(left: 15.0, right: 20, top: 30),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20.0),
                    ExpansionTile(
                      title: Text(
                        "Title",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      children: <Widget>[
                        ExpansionTile(
                          title: Text(
                            'Sub title',
                          ),
                          children: <Widget>[
                            Text("data"),
                            ListTile(
                              title: Text('data'),
                            ),
                            ListTile(
                              title: Text('data'),
                            ),
                          ],
                        ),
                        ListTile(
                          title: Text('data'),
                        ),
                        ListTile(
                          title: Text('data'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: AnimatedBuilder(
        animation: controller.pageViewController,
        builder: (context, snapshot) {
          return BottomNavigationBar(
            fixedColor:  Color.fromRGBO(74, 76, 255, 1),
            unselectedItemColor: Colors.grey,
            currentIndex: controller.pageViewController?.page?.round() ??
                0, // o page pode vir nulo em algum momento
            onTap: (index) {
              controller.pageViewController.jumpToPage(index);
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text("Imóveis")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), title: Text("Favoritos")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text("Usuário")),
            ],
          );
        },
      ),
    );
  }
}
