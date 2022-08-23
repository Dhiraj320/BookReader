import 'package:flutter/material.dart';

import '../pages/navigation_drawer.dart';

import '../pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void updateList(String value) {
    //this is the function that will filter our list
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Color(0xFF1f1545),
        title: Text("BookReader"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchPage()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Enjoy Reading",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/cover.jpg"),
                  ),
                  color: Colors.black,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            //category list
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 10.0),
              child: Container(
                height: 140,
                width: MediaQuery.of(context).size.height - 185.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  primary: false,
                  children: <Widget>[
                    options("assets/bestseller.jpg", "Bestseller"),
                    options("assets/Offers.jpg", "Best Offers"),
                    options("assets/kids.jpg", "Kids"),
                    options("assets/romance.jpg", "Romantic"),
                    options("assets/more.jpeg", "More Books"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recommend",
                        style: TextStyle(
                            fontSize: 30,
                            color: Color(0xFF1f1545),
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "See All",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Color(
                                        0xFF1f1545) //fontWeight: FontWeight.bold
                                    ),
                              ),
                            ),
                            // Icon(
                            //   Icons.arrow_right_rounded,
                            //   size: 40,
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
//recommended list
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 16.0),
              child: Container(
                height: 400,
                width: MediaQuery.of(context).size.height - 185.0,
                child: ListView(
                  //scrollDirection: Axis.vertical,
                  primary: false,
                  children: <Widget>[
                    recommended("assets/3.png", "The Wolf of Dictionary",
                        "A collection of unique words", "Add Cart"),
                    recommended("assets/1.jpeg", "First Soul",
                        "A tale by Keeley Smith", "Add Cart"),
                    recommended("assets/4.png", "Oliver Twist",
                        "A tale by Charlie Dickens", "Add Cart"),
                    recommended("assets/5.png", "Jaya Nepal",
                        "Know some major facts of Nepal", "Add Cart"),
                    recommended("assets/6.png", "The psychology of money",
                        "TimeLess Lessons", "Add Cart"),
                    recommended("assets/7.jpg", "Rich Dad Poor Dad",
                        "What The Rich and Poor Teach their Kids", "Add Cart"),
                    recommended("assets/8.jpg", "Atomic Habbit",
                        "Tinny Changes Remarkable Results", "Add Cart"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget options(String imgpath, String name) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      onTap: () {},
      child: Column(
        children: [
          Column(
            children: [
              Image.asset(
                imgpath,
                height: 100,
                width: 60,
              ),
              Text(
                name,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget recommended(String imgpath, String name, String title, String readers) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      onTap: () {},
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[100],
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 3, // takes 30% of available width
                child: Image.asset(
                  imgpath,
                  height: 150,
                  width: 150,
                ),
              ),
              Expanded(
                flex: 7, // takes 70% of available width
                child: Row(
                  children: [
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          name,
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(title,
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                            textAlign: TextAlign.right),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(40),
                                  topRight: Radius.circular(40),
                                  bottomLeft: Radius.circular(40),
                                ),
                                color: Color(0xFF1f1545),
                              ),
                              child: Center(
                                child: GestureDetector(
                                  child: Text(
                                    "Add to Cart",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              width: 40,
                            ),
                            Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(40),
                                  topRight: Radius.circular(40),
                                  bottomLeft: Radius.circular(40),
                                ),
                                color: Color(0xFF1f1545),
                              ),
                              child: Center(
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    "Read it",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                              ),
                            ),

                            // color: Colors.yellow,
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    ),
  );
}
