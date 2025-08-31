import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_app/data/app_data.dart';
import 'package:portfolio_app/models/personal_data_model.dart';
import 'package:portfolio_app/models/project_model.dart';
import 'package:portfolio_app/widgets/common/link_chip.dart';
import 'package:portfolio_app/widgets/common/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final PersonalDataModel personalDataModel = AppData.instance.personalData;
    return SelectionArea(
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Projets",
            style: Theme.of(context).textTheme.headlineLarge
          ),
          const Divider(),
          Column(
            spacing: 20,
            children: personalDataModel.projects.map((e) => _buildProjectCard(e, context)).toList()
          )
        ],
      ),
    );
  }

  Widget _buildProjectCard(ProjectModel project, BuildContext context) {
    return InkWell(
      onTap: () async {
        try {
          await launchUrl(Uri.parse(project.github));
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
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Responsive(
          desktop: _buildProjectCardDesktop(project, context),
          mobile: _buildProjectCardMobile(project, context),
        )
      ),
    );
  }

  Widget _buildProjectCardMobile(ProjectModel project, BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            "assets/images/project-${project.id}.jpg",
          ),
        ),
        _buildProjectDescription(project, context)
      ],
    );
  }

  Widget _buildProjectCardDesktop(ProjectModel project, BuildContext context) {
    return Row(
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            "assets/images/project-${project.id}.jpg",
            width: MediaQuery.of(context).size.width * 0.3,
          ),
        ),
        Expanded(
          child: _buildProjectDescription(project, context),
        )
      ],
    );
  }

  Widget _buildProjectDescription(ProjectModel project, BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 10,
          children: [
            Text(
              project.title,
              style: Theme.of(context).textTheme.titleLarge
            ),
            Icon(
              Icons.open_in_new
            )
          ],
        ),
        Text(project.description),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: project.links.map((e) => LinkChip(link: e)).toList(),
        ),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: project.technologies.map((e) => Chip(
            mouseCursor: MouseCursor.defer,
            label: Text(e),
            avatar: SvgPicture.asset(
              'assets/icons/${e.toLowerCase().replaceAll(" ", "_")}.svg',
            )
          )).toList(),
        )
      ],
    );
  }
}
