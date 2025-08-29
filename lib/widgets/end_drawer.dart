import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/responsive.dart';
import 'package:portfolio_app/widgets/title_button.dart';

class EndDrawer extends StatelessWidget {
  const EndDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    if (!Responsive.isMobile(context)) return const SizedBox.shrink();
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
            },
            child: const Text('Projets')
          ),
        ],
      ),
    );
  }
}
