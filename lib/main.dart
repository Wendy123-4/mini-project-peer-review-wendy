import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import 'package:project1/product.dart';
import 'package:project1/navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    //discount_items
    Widget discount_items= Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround ,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 20.0, 230.0, 10.0),

                child:Text ("Discounted Items",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                  ), )
            )




          ],
        )


    );
    //Headertops

    Widget headertop = Container(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround ,
        children: <Widget>[


          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 20.0, 260.0, 10.0),

              child:Text ("All Categories",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                    fontSize: 20.0
                ), )
          ),

           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              children: <Widget>[
                Text('Sneakers',),
                Icon(Icons.how_to_reg_outlined),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  height: 5,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Color(0xff1C313A),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              children: <Widget>[
                Text(
                  'Leather Bags',
                ),
                Icon(Icons.shopping_bag),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  height: 5,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Color(0xff1C313A),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              children: <Widget>[
                Text(
                  'Watches',
                ),
                Icon(Icons.watch_sharp),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  height: 5,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Color(0xff1C313A),
                    borderRadius: BorderRadius.circular(10),

                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );


    // Drawer
    Widget drawerSection = Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text("Chairman's Enterprise",
                style: TextStyle(
                    color: Colors.white
                )),
            decoration: BoxDecoration(
              color: Color(0xff1C313A),
            ),
          ),
          ListTile(
            title: Text('All Categories'),
            onTap: () {
              // Update the state of the app
              // Closing the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('My History'),
            onTap: () {
              // Update the state of the app
              // Closing the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {
              // Update the state of the app
              // Closing the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );


    return MaterialApp(
        title: "Chairman's Enterprise",
        home: Scaffold(
          drawer: drawerSection,
          appBar: AppBar(
            title: Text("Chairman's Enterprise",
                style: TextStyle(fontFamily: 'Times'),
                ),
            centerTitle: true,
            backgroundColor: Color(0xff1C313A),
            elevation: 50,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: (){},


              ),
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: (){},


              ),
            ],

          ),

          bottomNavigationBar: Navigation(),




          body: ListView(
            children: <Widget>[
              headertop,






              discount_items,
              ProductBox(
                name: "Rolex Submariner",
                price: "Rwf 2,00,000",
                discount: "-5%",
                image: "https://images.pexels.com/photos/190819/pexels-photo"
                    "-190819.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" ,
              ),
              ProductBox(
                name: "Converse All Stars",
                price: "Rwf 50,000",
                discount: "-10%",
                image: "https://images.pexels.com/photos/1240892/pexels"
                    "-photo-1240892.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" ,
              ),
              ProductBox(
                name: "Calvin Klein",
                price: "Rwf 500,000",
                discount: "-10%",
                image: "https://images.pexels.com/photos/1152077/"
                    "pexels-photo-1152077.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" ,
              ),
              ProductBox(
                name: "Vans Old School",
                price: "Rwf 100,000",
                discount: "-10%",
                image: "https://images.pexels.com/photos/1598508/pexels-photo-"
                    "1598508.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" ,
              ),
              ProductBox(
                name: "Leather Shoe",
                price: "Rwf 120,000",
                discount: "-5%",
                image: "https://images.pexels.com/photos/267301/"
                    "pexels-photo-267301.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" ,
              ),
              ProductBox(
                name: "Dive Watch",
                price: "Rwf 1,000,000",
                discount: "-10%",
                image: "https://images.pexels.com/photos/236915/"
                    "pexels-photo-236915.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" ,
              ),




            ],

          ),


          )

    );

  }
}


