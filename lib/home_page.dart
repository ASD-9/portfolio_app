import 'package:flutter/material.dart';
import 'package:portfolio_app/navigation_controller.dart';
import 'package:portfolio_app/section/about_section.dart';
import 'package:portfolio_app/widgets/home/app_bar.dart';
import 'package:portfolio_app/widgets/home/end_drawer.dart';
import 'package:portfolio_app/section/experiences_section.dart';
import 'package:portfolio_app/section/presentation/presentation_section_desktop.dart';
import 'package:portfolio_app/section/presentation/presentation_section_mobile.dart';
import 'package:portfolio_app/section/projects_section.dart';
import 'package:portfolio_app/widgets/common/responsive.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      endDrawer: EndDrawer(),
      body: SingleChildScrollView(
        controller: NavigationController.instance.scrollController,
        padding: EdgeInsets.all(Responsive.isMobile(context) ? 50 : 100),
        child: DefaultTextStyle(
          style: Theme.of(context).textTheme.bodyLarge!,
          child: Column(
            spacing: 50,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Responsive(
                desktop: PresentationSectionDesktop(),
                mobile: PresentationSectionMobile(),
              ),
              Responsive(
                desktop: AboutSection(),
              ),
              const ExperiencesSection(),
              const ProjectsSection()
            ],
          ),
        ),
      ),
    );
  }
}
