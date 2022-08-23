import 'package:bookreader/pages/library_page.dart';

import 'package:flutter/material.dart';

import 'ebook_page.dart';
import 'logout.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  // const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color(0xFF1f1545),
        child: ListView(
          padding: padding,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(80, 100, 20, 50),

              // height: 20,
              // width: 10,
              child: Text(
                'BookReader',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Colors.white70,
            ),
            const SizedBox(height: 20),
            buildMenuItem(
              text: 'Ebooks',
              icon: Icons.book,
              onClicked: () => selectedItem(context, 0),
            ),

            const SizedBox(height: 30),
            buildMenuItem(
              text: 'Library',
              icon: Icons.library_books,
              onClicked: () => selectedItem(context, 1),
            ),

            const SizedBox(height: 30),
            buildMenuItem(
              text: 'Get Bookreader Premium',
              icon: Icons.workspace_premium_sharp,
              onClicked: () => selectedItem(context, 2),
            ),
            const SizedBox(height: 30),
            buildMenuItem(
              text: 'About',
              icon: Icons.info,
              onClicked: () => selectedItem(context, 3),
            ),

            //const SizedBox(height: 12),
            Divider(
              color: Colors.white70,
            ),
            const SizedBox(height: 12),
            buildMenuItem(
              text: 'LogOut',
              icon: Icons.logout_rounded,
              onClicked: () => selectedItem(context, 4),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(
        text,
        style: TextStyle(
          color: color,
        ),
      ),
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => EbookPage()));
        break;

      case 1:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => LibraryPage()));
        break;

      case 2:
        break;

      case 3:
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => LogOut(),
        ));
        break;
    }
  }
}
