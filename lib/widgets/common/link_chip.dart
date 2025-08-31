import 'package:flutter/material.dart';
import 'package:portfolio_app/models/link_model.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkChip extends StatelessWidget {
  final LinkModel link;

  const LinkChip({super.key, required this.link});

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      onPressed: () async {
        try {
          await launchUrl(Uri.parse(link.url));
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
      backgroundColor: Colors.transparent,
      label: Text(link.label),
      avatar: Icon(Icons.link, color: Theme.of(context).colorScheme.onSurface,),
    );
  }
}
