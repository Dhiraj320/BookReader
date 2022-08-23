import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF1f1545),
        title: Text(
          'Library',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.download),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Top Books of the Year",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                //1
                SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: Image.network(
                            'https://covers.zlibcdn2.com/covers299/books/ac/c5/21/acc521dcbf15f206f9b8155e68622706.jpg'),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 200,
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Psychology of Money",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            "Morgan Housel",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 18.0),
                          ),
                          SizedBox(height: 14.0),
                          Text(
                            "4.9/5.0",
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(height: 12.0),
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.deepOrange),
                            ),
                            child: Text("Download",
                                style: TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                //2
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: Image.network(
                            'https://covers.zlibcdn2.com/covers299/books/70/32/d8/7032d82ffdc013053cb5ba5e04c8bc74.jpg'),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 200,
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rich Dad Poor Dad",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            "Robert T. Kiyosaki",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 18.0),
                          ),
                          SizedBox(height: 14.0),
                          Text(
                            "4.8/5.0",
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(height: 12.0),
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.deepOrange),
                            ),
                            child: Text("Download",
                                style: TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                //3
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: Image.network(
                            'https://covers.zlibcdn2.com/covers299/books/96/f9/97/96f997237d1fffe83467f130c350f275.jpg'),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 200,
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Atomic habits",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            "James Clear",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 18.0),
                          ),
                          SizedBox(height: 14.0),
                          Text(
                            "4.7/5.0",
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(height: 12.0),
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.deepOrange),
                            ),
                            child: Text("Download",
                                style: TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                //4
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: Image.network(
                            'https://covers.zlibcdn2.com/covers200/books/41/b3/3c/41b33cbc579445adf6bc4b50ccbe0019.jpg'),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 200,
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "5 Love Languages",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            "Gary Chapman",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 18.0),
                          ),
                          SizedBox(height: 14.0),
                          Text(
                            "4.7/5.0",
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(height: 12.0),
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.deepOrange),
                            ),
                            child: Text("Download",
                                style: TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                //5
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: Image.network(
                            'https://covers.zlibcdn2.com/covers200/books/c2/52/cc/c252cc1bc99664b9891890dd8497af0e.jpg'),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 200,
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Self Dicipline",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            "Curtis Leone",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 18.0),
                          ),
                          SizedBox(height: 14.0),
                          Text(
                            "4.6/5.0",
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(height: 12.0),
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.deepOrange),
                            ),
                            child: Text("Download",
                                style: TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                //6
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: Image.network(
                            'https://covers.zlibcdn2.com/covers200/books/e1/a0/52/e1a052b5428f021f54ae7d469b261674.jpg'),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 200,
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Exactly What to Say",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            "Phil M. Jones",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 18.0),
                          ),
                          SizedBox(height: 14.0),
                          Text(
                            "4.6/5.0",
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(height: 12.0),
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.deepOrange),
                            ),
                            child: Text("Download",
                                style: TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),

                //7

                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: Image.network(
                            'https://covers.zlibcdn2.com/covers299/books/ab/02/77/ab0277c8cc5b33e51564114b062fd8d6.jpg'),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 200,
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Think Again",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            "Eric Berne",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 18.0),
                          ),
                          SizedBox(height: 14.0),
                          Text(
                            "4.5/5.0",
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(height: 12.0),
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.deepOrange),
                            ),
                            child: Text("Download",
                                style: TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                //8
                SizedBox(height: 12.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: Image.network(
                            'https://covers.zlibcdn2.com/covers200/books/2a/17/69/2a17692555dbd43c04d696aaa8b55444.jpg'),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 200,
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "How to Talk to Anyone",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            "Leil Lowndes",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 18.0),
                          ),
                          SizedBox(height: 14.0),
                          Text(
                            "4.3/5.0",
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(height: 12.0),
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.deepOrange),
                            ),
                            child: Text("Download",
                                style: TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                //9
                SizedBox(height: 12.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: Image.network(
                            'https://covers.zlibcdn2.com/covers200/books/59/0e/00/590e0059150e05d0d7e142417189a870.jpg'),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 200,
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dark Psychology Secrets",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            "Daniel James Hollins",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 18.0),
                          ),
                          SizedBox(height: 14.0),
                          Text(
                            "4.6/5.0",
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(height: 12.0),
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.deepOrange),
                            ),
                            child: Text("Download",
                                style: TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                //10
                SizedBox(height: 12.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: Image.network(
                            'https://covers.zlibcdn2.com/covers200/books/a0/56/df/a056df69e5e2c9cf8c47b021922a9264.jpg'),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 200,
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "The Power of habit",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            "Charles Duhigg",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 18.0),
                          ),
                          SizedBox(height: 14.0),
                          Text(
                            "3.5/5.0",
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(height: 12.0),
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.deepOrange),
                            ),
                            child: Text("Download",
                                style: TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                //11
                SizedBox(height: 12.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: Image.network(
                            'https://covers.zlibcdn2.com/covers200/books/0c/c0/cf/0cc0cf7948ead84332112cc0160efb3d.jpg'),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 200,
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ego is the Enemy",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            "Ryan Holiday",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 18.0),
                          ),
                          SizedBox(height: 14.0),
                          Text(
                            "4.4/5.0",
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(height: 12.0),
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.deepOrange),
                            ),
                            child: Text("Download",
                                style: TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
