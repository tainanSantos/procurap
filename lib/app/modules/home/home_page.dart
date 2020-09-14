import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/home/property/property_page.dart';
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
        pageSnapping: true,
        scrollDirection: Axis.horizontal,
        children: [
          PropertyPage(),
          Container(
            child: Center(
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(74, 76, 255, 1),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: RaisedButton(
                  color: Colors.transparent,
                  elevation: 0,
                  onPressed: () {},
                  child: Text(
                    "Voce ainda não te Favoritos :(",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Container(),
        ],
      ),
      bottomNavigationBar: 
      AnimatedBuilder(
        animation: controller.pageViewController,
        builder: (context, snapshot) {
          return
           BottomNavigationBar(
            fixedColor: Color.fromRGBO(74, 76, 255, 1),
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
                  icon: Icon(Icons.message), title: Text("Sobre")),
            ],
          );
        },
      ),
    );
  }
}
