import 'package:platina_uz/features/home/domain/entities/result_model.dart';

class ArticleModel {
  ArticleModel({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  factory ArticleModel.fromJson(dynamic json) {
    return ArticleModel(
      count: int.tryParse(json['count'].toString()),
      next: json['next'] as String,
      previous: json['previous'],
      results: json['results'] != null ? (json['results'] as List).map((e) => ResultsModel.fromJson(e)).toList() : [],
    );
  }

  int? count;
  String? next;
  dynamic previous;
  List<ResultsModel?>? results;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['next'] = next;
    map['previous'] = previous;
    map['results'] = results?.map((v) => v?.toJson()).toList();
    return map;
  }
}
