import 'package:flutter/material.dart';
import 'package:food_app/food-card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FoodApp(),
    );
  }
}

class FoodApp extends StatefulWidget {
  @override
  _FoodAppState createState() => _FoodAppState();
}

class _FoodAppState extends State<FoodApp> {
  List<String> assetImage = [
    "assets/images/food-1322797.jpg",
    "assets/images/food-1324546.jpg",
    "assets/images/food-1325335.jpg",
    "assets/images/healthy-food-1327899.jpg",
    "assets/images/indian-food-by-sat-bhatti-prt-1329460.jpg",
    "assets/images/mexican-food-1534948.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      appBar: AppBar(
        backgroundColor: Color(0XFFfcfcfc),
        title: Text(
          "Food App",
          style: TextStyle(
            color: Color(0xFFfc6a26),
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {}),
        actions: [
          IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.black),
              onPressed: () {})
        ],
      ),
      ////////////////////////////////////
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Let's Eat \nOrder your food   now",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: double.infinity,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Color(0x55d2d2d2),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                      hintText: "search...",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 20.0),
                    ),
                  )),
                  RaisedButton(
                    elevation: 3.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                    color: Color(0xFFfc6a26),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ///////////////////////////////////
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                children: [
                  foodCard(assetImage[0], "meat plate", "25"),
                  foodCard(assetImage[1], "meat plate", "25"),
                  foodCard(assetImage[2], "meat plate", "25"),
                  foodCard(assetImage[3], "meat plate", "25"),
                  foodCard(assetImage[4], "meat plate", "25"),
                  foodCard(assetImage[5], "meat plate", "25"),
                ],
              ),
            )
          ],
        ),
      ),
      ///////////////////////////////////

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0XFFfcfcfc),
        elevation: 0.0,
        unselectedItemColor: Colors.black,
        selectedItemColor: Color(0xFFfc6a26),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.store), title: Text("Our Shope")),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), title: Text("Favorite")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text("Profile")),
        ],
      ),
    );
  }
}
