import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactIconButton extends StatelessWidget {
  final Uri uri;
  final String toolTip;
  final String icon;

  const ContactIconButton({
    super.key,
    required this.uri,
    required this.toolTip,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: toolTip,
      onPressed: () async {
        try {
          await launchUrl(uri);
        } catch (e) {
          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Impossible d'ouvrir le lien"),
              ),
            );
          } 
        }
      },
      icon: SvgPicture.asset(
        'assets/icons/$icon.svg',
        colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onSurface, BlendMode.srcIn),
        width: 40,
        height: 40
      ),
    );
  }
}
