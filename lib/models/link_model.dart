class LinkModel {
  final String label;
  final String url;

  LinkModel({required this.label, required this.url});

  factory LinkModel.fromJson(Map<String, dynamic> json) {
    return LinkModel(
      label: json['label'],
      url: json['url'],
    );
  }
}
