import 'package:flutter/material.dart';
// import 'package:splashscreen/splashscreen.dart';
// class Splash_Screen extends StatelessWidget {
//   const Splash_Screen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:Colors.,
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [


                   Image(
                    image: AssetImage('images/icon.png'),
                  ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
