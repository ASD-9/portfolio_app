import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_app/data/app_data.dart';
import 'package:portfolio_app/models/experience_model.dart';
import 'package:portfolio_app/models/link_model.dart';
import 'package:portfolio_app/models/personal_data_model.dart';
import 'package:portfolio_app/widgets/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class ExperiencesSection extends StatelessWidget {
  const ExperiencesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final PersonalDataModel personalData = AppData.instance.personalData;
    return SelectionArea(
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Expériences",
            style: Theme.of(context).textTheme.headlineLarge
          ),
          const Divider(),
          Column(
            spacing: 20,
            children: personalData.experiences.map((e) => _buildExperienceCard(e, context)).toList()
          )
        ],
      ),
    );
  }

  Widget _buildExperienceCard(ExperienceModel experience, BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  experience.title,
                  style: Theme.of(context).textTheme.titleLarge
                )
              ),
              if (!Responsive.isMobile(context))
                Text("${experience.startDate} - ${experience.endDate}")
            ],
          ),
          Text(experience.company, style: Theme.of(context).textTheme.titleMedium),
          if (Responsive.isMobile(context))
            Text("${experience.startDate} - ${experience.endDate}"),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: experience.details.map((e) => Text("- $e")).toList(),
          ),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: experience.links.map((e) {
              return _buildLinkChip(e, context);
            }).toList(),
          ),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: experience.technologies.map((e) => Chip(
              label: Text(e),
              avatar: SvgPicture.asset(
                'assets/icons/${e.toLowerCase()}.svg',
              )
            )).toList(),
          )
        ],
      ),
    );
  }

  Widget _buildLinkChip(LinkModel link, BuildContext context) {
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
