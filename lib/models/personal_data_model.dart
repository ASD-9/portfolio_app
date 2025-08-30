class PersonalDataModel {
  final String name;
  final String email;
  final String phone;
  final String linkedin;
  final String github;
  final String about;
  final List<String> softSkills;

  PersonalDataModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.linkedin,
    required this.github,
    required this.about,
    required this.softSkills
  });

  factory PersonalDataModel.fromJson(Map<String, dynamic> json) {
    return PersonalDataModel(
      name: json['personalInfo']['name'],
      email: json['personalInfo']["contact"]['email'],
      phone: json['personalInfo']["contact"]['phone'],
      linkedin: json['personalInfo']['contact']['linkedin'],
      github: json['personalInfo']['github'],
      about: json['personalInfo']['about'],
      softSkills: List<String>.from(json['personalInfo']['skills']['soft'])
    );
  }
}
