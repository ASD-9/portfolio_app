import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/presentation/profil.dart';
import 'package:portfolio_app/widgets/presentation/profil_image.dart';

class PresentationSectionMobile extends StatelessWidget {
  const PresentationSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ProfilImage(
          width: 300,
          height: 350,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Profil(),
        ),
      ],
    );
  }
}
