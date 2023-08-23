class MenuModel {
  MenuModel({
    this.name,
    this.slug,
    this.color,
    this.order,
    this.link,
    this.language,
  });

  factory MenuModel.fromJson(dynamic json) {
    return MenuModel(
      name: json['name'] as String,
      slug: json['slug'] as String,
      color: json['color'] as String,
      order: int.tryParse(json['order'].toString()),
      link: json['link'] as String,
      language: json['language'] as String,
    );
  }

  String? name;
  String? slug;
  String? color;
  int? order;
  String? link;
  String? language;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['slug'] = slug;
    map['color'] = color;
    map['order'] = order;
    map['link'] = link;
    map['language'] = language;
    return map;
  }
}
