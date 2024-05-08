import 'package:flutter/material.dart';
import 'package:minalima/home.dart';
import 'package:minalima/menu.dart';
import 'package:minalima/sign_up.dart';
import 'package:minalima/splash_screen.dart';

void main() {
  runApp(const Minalima());
}

class Minalima extends StatelessWidget {
  const Minalima({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

// HOME PAGE
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) => home();
}

// MENU PAGE
class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text(
        'Menu',
        style: TextStyle(
          fontFamily: 'Inter-Bold',
        ),
      ),
      toolbarHeight: 70,
      // elevation: 20,
      backgroundColor: Color(0xFFEEEFF5),
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Home(),
          ));
        },
        icon: Icon(Icons.menu_rounded),
      ),
    ),

    body: ListView(
      children: [
        Year(),
        Stickers(),
        Darkmode(),
        Archives(),
        MyAccount(),
      ],
    )
  );
}