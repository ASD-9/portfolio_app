import 'package:portfolio_app/models/experience_model.dart';
import 'package:portfolio_app/models/project_model.dart';

class PersonalDataModel {
  final String name;
  final String email;
  final String phone;
  final String linkedin;
  final String github;
  final String about;
  final List<String> softSkills;
  final List<ExperienceModel> experiences;
  final List<ProjectModel> projects;

  PersonalDataModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.linkedin,
    required this.github,
    required this.about,
    required this.softSkills,
    required this.experiences,
    required this.projects
  });

  factory PersonalDataModel.fromJson(Map<String, dynamic> json) {
    return PersonalDataModel(
      name: json['personalInfo']['name'],
      email: json['personalInfo']["contact"]['email'],
      phone: json['personalInfo']["contact"]['phone'],
      linkedin: json['personalInfo']['contact']['linkedin'],
      github: json['personalInfo']['github'],
      about: json['personalInfo']['about'],
      softSkills: List<String>.from(json['personalInfo']['skills']['soft']),
      experiences: List<ExperienceModel>.from(json['personalInfo']['experiences'].map((e) => ExperienceModel.fromJson(e))),
      projects: List<ProjectModel>.from(json['projects'].map((e) => ProjectModel.fromJson(e)))
    );
  }
}
