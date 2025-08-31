import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/presentation/profil.dart';
import 'package:portfolio_app/widgets/presentation/profil_image.dart';

class PresentationSectionDesktop extends StatelessWidget {
  const PresentationSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Profil()),
        ProfilImage(
          width: 350,
          height: 400,
        ),
      ],
    );
  }
}
