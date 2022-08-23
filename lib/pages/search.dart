import 'package:flutter/material.dart';

import '../modell/book_model.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  static List<BookModel> main_books_list = [
    BookModel(
      "The Wolf of Dictonary",
      226,
      "https://images-na.ssl-images-amazon.com/images/I/51zeACEhsNL._SX373_BO1,204,203,200_.jpg",
      4.5,
    ),
    BookModel(
      "First Soul",
      250,
      "https://images-na.ssl-images-amazon.com/images/I/516KGbpLCQL._SX310_BO1,204,203,200_.jpg",
      4.6,
    ),
    BookModel(
      "Oliver Twist",
      280,
      "https://m.media-amazon.com/images/I/51zYFogJw3L.jpg",
      4.7,
    ),
    BookModel(
      "Jaya Nepal",
      300,
      "https://images-na.ssl-images-amazon.com/images/I/41yR4ZQI0UL._SX331_BO1,204,203,200_.jpg",
      4.3,
    ),
    BookModel(
      "The Psychology of Money",
      310,
      "https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//91/MTA-38622151/no_brand_the_psychology_of_money_-_morgan_housel_full02_nzlfwf4g.jpg",
      4.8,
    ),
    BookModel(
      "Rich Dad Poor Dad",
      235,
      "https://kbimages1-a.akamaihd.net/ddf8d53d-7df5-4560-8fbd-43915f4f6a03/1200/1200/False/rich-dad-poor-dad-24.jpg",
      4.2,
    ),
    BookModel(
      "Atmoic habits",
      225,
      "https://m.media-amazon.com/images/I/513Y5o-DYtL.jpg",
      4.3,
    ),
  ];

  List<BookModel> display_list = List.from(main_books_list);

  void updateList(String value) {
    setState(() {
      display_list = main_books_list
          .where((element) =>
              element.book_title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1f1545),
      appBar: AppBar(
        backgroundColor: Color(0xFF1f1545),
        elevation: 0,
      ),
      body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Search your favourite book",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                onChanged: (value) => updateList(value),
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none),
                    hintText: "eg: First Soul",
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Colors.white),
              ),
              SizedBox(height: 20.0),
              Expanded(
                child: display_list.length == 0
                    ? Center(
                        child: Text(
                          "No result found",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                      )
                    : ListView.builder(
                        itemCount: display_list.length,
                        itemBuilder: (context, index) => ListTile(
                          contentPadding: EdgeInsets.all(8.0),
                          title: Text(
                            display_list[index].book_title!,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            '${display_list[index].pages}',
                            style: TextStyle(
                              color: Colors.white60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          trailing: Text(
                            '${display_list[index].rating}',
                            style: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          leading: Image.network(
                              display_list[index].book_cover_url!),
                        ),
                      ),
              ),
            ],
          )),
    );
  }
}
