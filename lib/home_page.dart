import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/about/about_desktop.dart';
import 'package:portfolio_app/widgets/app_bar.dart';
import 'package:portfolio_app/widgets/end_drawer.dart';
import 'package:portfolio_app/widgets/presentation/presentation_desktop.dart';
import 'package:portfolio_app/widgets/presentation/presentation_mobile.dart';
import 'package:portfolio_app/widgets/responsive.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      endDrawer: EndDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(50),
        child: Column(
          spacing: 50,
          children: [
            Responsive(
              desktop: PresentationDesktop(),
              mobile: PresentationMobile(),
            ),
            Responsive(
              desktop: AboutDesktop(),
            ),
          ],
        ),
      ),
    );
  }
}
