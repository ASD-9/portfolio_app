import 'package:flutter/material.dart';
import 'package:portfolio_app/navigation_controller.dart';
import 'package:portfolio_app/widgets/common/responsive.dart';
import 'package:portfolio_app/widgets/common/title_button.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final NavigationController nav = NavigationController.instance;
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
                onPressed: () => nav.scrollToSection(nav.aboutSectionKey),
              ),
              MaterialButton(
                height: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: const Text('Expériences'),
                onPressed: () => nav.scrollToSection(nav.experiencesSectionKey),
              ),
              MaterialButton(
                height: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: const Text('Projets'),
                onPressed: () => nav.scrollToSection(nav.projectsSectionKey),
              ),
            ],
          )
      ],
    );
  }
}
