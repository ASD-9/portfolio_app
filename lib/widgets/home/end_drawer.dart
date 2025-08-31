import 'package:flutter/material.dart';
import 'package:portfolio_app/navigation_controller.dart';
import 'package:portfolio_app/widgets/common/responsive.dart';
import 'package:portfolio_app/widgets/common/title_button.dart';

class EndDrawer extends StatelessWidget {
  const EndDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    if (!Responsive.isMobile(context)) return const SizedBox.shrink();
    final NavigationController nav = NavigationController.instance;
    return Drawer(
      child: Column(
        spacing: 20,
        children: [
          const SizedBox(height: 10,),
          TitleButton(isInDrawer: true),
          const Divider(),
          MaterialButton(
            height: 75,
            minWidth: double.infinity,
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () {
              Scaffold.of(context).closeEndDrawer();
              nav.scrollToSection(nav.aboutSectionKey);
            },
            child: const Text('À propos')
          ),
          MaterialButton(
            height: 75,
            minWidth: double.infinity,
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () {
              Scaffold.of(context).closeEndDrawer();
              nav.scrollToSection(nav.experiencesSectionKey);
            },
            child: const Text('Expériences')
          ),
          MaterialButton(
            height: 75,
            minWidth: double.infinity,
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () {
              Scaffold.of(context).closeEndDrawer();
              nav.scrollToSection(nav.projectsSectionKey);
            },
            child: const Text('Projets')
          ),
        ],
      ),
    );
  }
}
