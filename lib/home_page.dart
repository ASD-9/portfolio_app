import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/app_bar.dart';
import 'package:portfolio_app/widgets/end_drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: EndDrawer(),
      body: Center(
        child: Column(
          children: [
            MyAppBar(),
            const Text('Page Content To Be Added'),
          ],
        ),
      ),
    );
  }
}
