import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/app_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            MyAppBar(),
            const Text('You have pushed the button this many times:'),
          ],
        ),
      ),
    );
  }
}
