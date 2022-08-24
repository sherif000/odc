import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:odc/login_screen/view/login_page.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(

      splash:Column(
        children: [
          Center(
            child: Image.asset('images/Desktop Screenshot 2022.08.16 - 09.34.02.05.png'),
          ),

        ],

      ),
      backgroundColor:Colors.white,

      nextScreen:LoginPage(),
      splashIconSize: 250,
    );
  }
}
