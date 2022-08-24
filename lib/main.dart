 import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled9/splash_screen.dart';
// import 'package:splashscreen/splashscreen.dart';
import 'login_screen/login_screen.dart';
import 'new file/new file.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home:LoginScreen(),
    );
  }
}
// class SplashScreen extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//    return _SplashScreen();
//   }
//
// }
// class _SplashScreen extends State<SplashScreen>{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: BoxDecoration(),
//       ),
//     );
//   }
// }