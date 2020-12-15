import 'package:awani_app/src/pages/navBarScreens/ShoppingScreens/basketPage.dart';
import 'package:flutter/material.dart';
import 'homeScreen.dart';
import 'favoriteScreen.dart';
import 'listScreen.dart';
import 'ShoppingScreens/payingPage.dart';
import 'typeAwaniScreen.dart';

class BottomNavBarPage extends StatefulWidget {
  int selectedPage;
  BottomNavBarPage(this.selectedPage);
  @override
  _BottomNavBarPageState createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  final _optionPage = [
    HomePage(),
    FavoritePage(),
    BasketPage(),
    TypeAwaniPage(),
    ListPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(239, 243, 250, 1),
      body: _optionPage[widget.selectedPage],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(250)),
          boxShadow: [
            BoxShadow(
              color: Color(0x54000000),
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    activeIcon: Column(
                      children: [
                        Icon(Icons.home),
                        Text(
                          '__',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(153, 0, 94, 1)),
                        )
                      ],
                    ),
                    icon: Icon(Icons.home),
                    title: Text("")),
                BottomNavigationBarItem(
                    activeIcon: Column(
                      children: [
                        Icon(Icons.favorite),
                        Text(
                          '__',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(153, 0, 94, 1)),
                        )
                      ],
                    ),
                    icon: Icon(Icons.favorite),
                    title: Text("")),
                BottomNavigationBarItem(
                    activeIcon: Column(
                      children: [
                        Icon(Icons.shopping_cart),
                        Text(
                          '__',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(153, 0, 94, 1)),
                        )
                      ],
                    ),
                    icon: Icon(Icons.shopping_cart),
                    title: Text("")),
                BottomNavigationBarItem(
                    activeIcon: Column(
                      children: [
                        Icon(Icons.dashboard),
                        Text(
                          '__',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(153, 0, 94, 1)),
                        )
                      ],
                    ),
                    icon: Icon(Icons.dashboard),
                    title: Text("")),
                BottomNavigationBarItem(
                    activeIcon: Column(
                      children: [
                        Icon(Icons.list),
                        Text(
                          '__',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(153, 0, 94, 1)),
                        )
                      ],
                    ),
                    icon: Icon(Icons.list),
                    title: Text("")),
              ],
              fixedColor: Color.fromRGBO(153, 0, 94, 1),
              backgroundColor: Colors.white,
              //selectedItemColor: Colors.cyan,
              selectedFontSize: 20.0,
              //à l'ouvertre de page, chniya el icon li tkoun selectionée => icon d'indice 1
              currentIndex: widget.selectedPage,
              onTap: (int index) {
                setState(() {
                  widget.selectedPage = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
