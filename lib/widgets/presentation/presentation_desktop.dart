import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/presentation/profil.dart';
import 'package:portfolio_app/widgets/presentation/profil_image.dart';

class PresentationDesktop extends StatelessWidget {
  const PresentationDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Profil(),
        ProfilImage(
          width: 350,
          height: 400,
        ),
      ],
    );
  }
}
