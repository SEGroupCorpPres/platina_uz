class CategoryModel {
  CategoryModel({
    this.id,
    this.name,
    this.slug,
    this.color,
  });

  factory CategoryModel.fromJson(dynamic json) {
    return CategoryModel(
      id: int.tryParse(json['id'].toString()),
      name: json['name'] as String,
      slug: json['slug'] as String,
      color: json['color'] as String,
    );
  }

  int? id;
  String? name;
  String? slug;
  String? color;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['color'] = color;
    return map;
  }
}
