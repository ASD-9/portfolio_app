import 'package:flutter/material.dart';

class ProfilImage extends StatelessWidget {
  final double height;
  final double width;

  const ProfilImage({
    super.key,
    required this.height,
    required this.width
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 10,
          left: 20,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.onSurface, width: 3,),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/profil.jpg'), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10)
          ),
        )
      ],
    );
  }
}
