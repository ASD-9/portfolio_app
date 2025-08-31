import 'package:portfolio_app/models/link_model.dart';

class ProjectModel {
  final int id;
  final String title;
  final String description;
  final String github;
  final List<LinkModel> links;

  ProjectModel({
    required this.id,
    required this.title,
    required this.description,
    required this.github,
    required this.links
  });

  factory ProjectModel.fromJson(Map<String, dynamic> json) {
    return ProjectModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      github: json['github'],
      links: List<LinkModel>.from(json['links'].map((x) => LinkModel.fromJson(x))),
    );
  }
}
