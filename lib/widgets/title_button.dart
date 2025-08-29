import 'package:flutter/material.dart';

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
