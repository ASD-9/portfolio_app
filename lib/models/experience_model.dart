import 'package:portfolio_app/models/link_model.dart';

class ExperienceModel {
  final String title;
  final String company;
  final String place;
  final String startDate;
  final String endDate;
  final List<String> details;
  final List<String> technologies;
  final List<LinkModel> links;

  ExperienceModel({
    required this.title,
    required this.company,
    required this.place,
    required this.startDate,
    required this.endDate,
    required this.details,
    required this.technologies,
    required this.links,
  });

  factory ExperienceModel.fromJson(Map<String, dynamic> json) {
    return ExperienceModel(
      title: json['title'],
      company: json['company'],
      place: json['place'],
      startDate: json['startDate'],
      endDate: json['endDate'],
      details: List<String>.from(json['details']),
      technologies: List<String>.from(json['technologies']),
      links: List<LinkModel>.from(json['links'].map((link) => LinkModel.fromJson(link))),
    );
  }
}
