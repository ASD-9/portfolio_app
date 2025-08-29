import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/responsive.dart';
import 'package:portfolio_app/widgets/title_button.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TitleButton(isInDrawer: false),
      actions: [
        if (!Responsive.isMobile(context))
          Row(
            children: [
              MaterialButton(
                height: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: const Text('À propos'),
                onPressed: () {},
              ),
              MaterialButton(
                height: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: const Text('Expériences'),
                onPressed: () {},
              ),
              MaterialButton(
                height: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: const Text('Projets'),
                onPressed: () {},
              ),
            ],
          )
      ],
    );
  }
}
