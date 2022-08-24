import 'package:flutter/material.dart';
import 'package:odc/forums/view/new_post_screen.dart';
import 'package:odc/home_screen/controller/all_provider/provider.dart';
import 'package:odc/home_screen/controller/plant_provider/provider.dart';
import 'package:odc/home_screen/controller/tool_provider/provider.dart';
import 'package:odc/home_screen/view/home_page/home.dart';
import 'package:odc/login_screen/controller/login_provider/provider.dart';
import 'package:odc/login_screen/view/login_page.dart';
import 'package:odc/my_cart/view/empty_cart/empty.dart';
import 'package:odc/register_screen/controller/signup_provider/provider.dart';
import 'package:odc/register_screen/view/register_page.dart';
import 'package:odc/splash_screen/splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>Login_providerProvider()),
        ChangeNotifierProvider(create: (_)=>Signup_providerProvider()),
        ChangeNotifierProvider(create: (_)=>All_providerProvider()),
        ChangeNotifierProvider(create: (_)=>Plant_providerProvider()),
        ChangeNotifierProvider(create: (_)=>Tool_providerProvider()),


      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Register_page(),
      ),
    );
  }
}
