import 'package:flutter/material.dart';
import 'package:portfolio_app/navigation_controller.dart';

class TitleButton extends StatelessWidget {
  final bool isInDrawer;

  const TitleButton({super.key, required this.isInDrawer});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          if (isInDrawer) Scaffold.of(context).closeEndDrawer();
          NavigationController.instance.scrollToTop();
        },
        child: Row(
          mainAxisAlignment: isInDrawer ? MainAxisAlignment.center : MainAxisAlignment.start,
          children: [
            Icon(
              Icons.code
            ),
            const SizedBox(width: 10),
            Text('Portfolio'),
          ],
        )
      )
    );
  }
}
