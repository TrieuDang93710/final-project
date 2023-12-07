import 'package:flutter/material.dart';
import 'package:flutter_manager_sell_app/src/page/login_sign_screnn/register.dart';
import 'package:flutter_manager_sell_app/src/page/main_screen/home_screen.dart';
import 'package:flutter_manager_sell_app/src/page/start_screen/sign_in_up_button.dart';
import 'package:flutter_manager_sell_app/src/page/start_screen/slide_start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RegisterScreen(), //Trang này là cái login
            // SlideStartWidget(),//Trang này là tui làm
            // SignInUpButtonScreen(),
            // HomeScreen()// Trang này là tui làm trang Home á
          ],
        ),
      ),
    );
  }
}
