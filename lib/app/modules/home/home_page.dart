import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/logo_app.dart';
import 'package:procurap/app/modules/home/pages/favorites/favorites_page.dart';
import 'package:procurap/app/modules/home/pages/property/property_page.dart';
import 'package:procurap/app/modules/home/pages/user/user_page.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: PageView(
        controller: controller.pageViewController,
        pageSnapping: true,
        scrollDirection: Axis.horizontal,
        children: [
          PropertyPage(),
          FavoritesPage(),
          UserPage(),
          Container(
            color: CustomColor.primary,
            child: Center(
              child: Container(padding: EdgeInsets.all(10), child: LogoApp()),
            ),
          )
        ],
      ),
      bottomNavigationBar: AnimatedBuilder(
        animation: controller.pageViewController,
        builder: (context, snapshot) {
          return BottomNavigationBar(
            //  backgroundColor: CustomColor.primary2,
            fixedColor: CustomColor.primary,
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
                  icon: Icon(Icons.person), title: Text("usuário")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.info), title: Text("Sobre")),
            ],
          );
        },
      ),
    );
  }
}
