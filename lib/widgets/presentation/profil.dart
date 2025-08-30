import 'package:flutter/material.dart';
import 'package:portfolio_app/data/app_data.dart';
import 'package:portfolio_app/models/personal_data_model.dart';
import 'package:portfolio_app/widgets/presentation/contact_icon_button.dart';

class Profil extends StatelessWidget {
  Profil({super.key});

  final List<String> contacts = ["GitHub", "Linkedin"];

  @override
  Widget build(BuildContext context) {
    final PersonalDataModel personalData = AppData.instance.personalData;
    return SelectionArea(
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            personalData.name,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Row(
            children: [
              ContactIconButton(uri: Uri.parse(personalData.github), toolTip: "GitHub", icon: "github"),
              ContactIconButton(uri: Uri.parse(personalData.linkedin), toolTip: "LinkedIn", icon: "linkedin"),
              ContactIconButton(uri: Uri(scheme: "mailto", path: personalData.email), toolTip: personalData.email, icon: "mail"),
              ContactIconButton(uri: Uri(scheme: "tel", path: personalData.phone), toolTip: personalData.phone, icon: "phone"),
            ],
          ),
        ],
      ),
    );
  }
}
