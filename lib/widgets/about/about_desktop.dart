import 'package:flutter/material.dart';
import 'package:portfolio_app/data/app_data.dart';
import 'package:portfolio_app/models/personal_data_model.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final PersonalDataModel personalData = AppData.instance.personalData;
    return SelectionArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "À propos de moi",
              style: Theme.of(context).textTheme.headlineLarge
            ),
            Text(
              personalData.about,
              style: Theme.of(context).textTheme.bodyLarge
            )
          ],
        ),
      ),
    );
  }
}
