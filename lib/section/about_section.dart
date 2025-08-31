import 'package:flutter/material.dart';
import 'package:portfolio_app/data/app_data.dart';
import 'package:portfolio_app/models/personal_data_model.dart';
import 'package:portfolio_app/navigation_controller.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final PersonalDataModel personalData = AppData.instance.personalData;
    return SelectionArea(
      key: NavigationController.instance.aboutSectionKey,
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "À propos de moi",
            style: Theme.of(context).textTheme.headlineLarge
          ),
          const Divider(),
          Text(personalData.about)
        ],
      ),
    );
  }
}
