import 'package:platina_uz/features/home/domain/entities/result_model.dart';

class PopularPostModel {
  PopularPostModel({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  factory PopularPostModel.fromJson(dynamic json) {
    return PopularPostModel(
      count: int.tryParse(json['count'].toString()),
      next: json['next'],
      previous: json['previous'],
      results: json['results'] != null ? (json['results'] as List).map((e) => ResultsModel.fromJson(e)).toList() : [],
    );
  }

  int? count;
  dynamic next;
  dynamic previous;
  List<ResultsModel?>? results;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['next'] = next;
    map['previous'] = previous;
    final results = this.results;

    map['results'] = results?.map((v) => v?.toJson()).toList();
    return map;
  }
}
