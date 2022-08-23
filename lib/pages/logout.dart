import 'package:bookreader/screens/signin_screen.dart';

import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

class LogOut extends StatefulWidget {
  const LogOut({Key? key}) : super(key: key);

  @override
  State<LogOut> createState() => _LogOutState();
}

class _LogOutState extends State<LogOut> {
  Future<void> openDialog() async {
    switch (await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text("Are You Sure to Logout"),
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SimpleDialogOption(
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color(0xFF1f1545),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInScreen()));
                      },
                      child: Text('Yes'),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SimpleDialogOption(
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color(0xFF1f1545),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Text('No'),
                    ),
                  ),
                ],
              ),
            ],
          );
        })) {
      case Button.Yes:
        print('signout');
        break;
      case Button.No:
        print('Not signout');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1f1545),
          title: Center(
            child: Text(
              "Logout",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Center(
            child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Color(0xFF1f1545),
            ),
          ),
          onPressed: () {
            openDialog();
          },
          child: Text("Logout", style: TextStyle(color: Colors.white)),
        )));
  }
}

enum Button { Yes, No }

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFF1f1545),
//         title: Center(
//           child: Text(
//             "Logout",
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//       ),
//       backgroundColor: Colors.white,
//       body: Center(
//         //     child: Text(
//         //         "Happy Independence Day\n\n"
//         //         "One individual may die\n"
//         //         "for an idea, but that\n"
//         //         "idea will, after his\n"
//         //         "death , incarnate itself\n"
//         //         "in a thousand lives.....\n"
//         //         " ..by Netaji S.C. Bose",
//         //         style: TextStyle(
//         //             fontSize: 28,
//         //             fontWeight: FontWeight.bold,
//         //             color: Colors.white)),
//         //   ),
//         // ),
//
//         child: Center(
//           child: ElevatedButton(
//             child: Text("Logout"),
//             onPressed: () {
//               FirebaseAuth.instance.signOut().then((value) {
//                 print("Signed Out");
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => SignInScreen()));
//               });
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
