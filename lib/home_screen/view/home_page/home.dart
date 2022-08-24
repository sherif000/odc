import 'package:flutter/material.dart';
import 'package:odc/home_screen/view/tab_bar_screen/all.dart';
import 'package:odc/home_screen/view/tab_bar_screen/plant.dart';
import 'package:odc/home_screen/view/tab_bar_screen/seed.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List <Widget>items =[
    Icon(Icons. whatshot),
    Icon(Icons.settings_overscan),
    Icon(Icons.home),
    Icon(Icons.notifications),
    Icon(Icons.person),
  ];
  int index=0;
  List<Widget>screen=[
    AllScreen(),
    SeedScreen(),
    PlantScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(items: items,
        buttonBackgroundColor:Colors.green ,
        backgroundColor: Colors.white,
        color: Colors.white,
        index: index,
      ),
      body: ListView(
        children: [
          Image.asset('images/Desktop Screenshot 2022.08.16 - 09.34.02.05.png'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'search'
                  ),

                ),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  height: 46,width: 51,
                  child: Icon(Icons.shopping_cart),
                ),

              ],
            ),
          ),
          TabBarView(children:[
     AllScreen(),
            PlantScreen(),
            SeedScreen(),
          ] ),

        ],
      ),

    ));
  }
}
