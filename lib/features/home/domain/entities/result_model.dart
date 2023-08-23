import 'dart:ffi';

import 'category_model.dart';

class ResultsModel {
  ResultsModel({
    this.id,
    this.category,
    this.title,
    this.shortDescription,
    this.relatesTo,
    this.description,
    this.slug,
    this.authorOffered,
    this.publish,
    this.isPinned,
    this.numberOfViews,
    this.image,
    this.imageExtraLarge,
    this.imageLarge,
    this.imageMedium,
    this.imageSmall,
    this.imageSource,
    this.imageName,
    this.gallery,
    this.shortUrl,
    this.youtubeLink,
    this.tags,
    this.expiredAt,
    this.language,
  });

  factory ResultsModel.fromJson(dynamic json) {
    return ResultsModel(
      id: int.tryParse(json['id'].toString()),
      category: json['category'] != null ? CategoryModel.fromJson(json['category']) : null,
      title: json['title'] as String,
      shortDescription: json['short_description'] as String,
      relatesTo: json['relates_to'],
      description: json['description'] as String,
      slug: json['slug'] as String,
      authorOffered: json['author_offered'] as bool,
      publish: json['publish'] as String,
      isPinned: json['is_pinned'] as bool,
      numberOfViews: int.tryParse(json['number_of_views'].toString()),
      image: json['image'] as String,
      imageExtraLarge: json['image_extra_large'] as String,
      imageLarge: json['image_large'] as String,
      imageMedium: json['image_medium'] as String,
      imageSmall: json['image_small'] as String,
      imageSource: json['image_source'] as String,
      imageName: json['image_name'] as String,
      gallery: json['gallery'] != null ? (json['gallery'] as List).map((e) => e as Map<String, dynamic>).toList() : [],
      shortUrl: json['short_url'] as String,
      youtubeLink: json['youtube_link'],
      tags: json['tags'] != null ? (json['tags'] as List).map((e) => e as String).toList() : [],
      expiredAt: json['expired_at'],
      language: json['language'] as String,
    );
  }

  int? id;
  CategoryModel? category;
  String? title;
  String? shortDescription;
  dynamic relatesTo;
  String? description;
  String? slug;
  bool? authorOffered;
  String? publish;
  bool? isPinned;
  int? numberOfViews;
  String? image;
  String? imageExtraLarge;
  String? imageLarge;
  String? imageMedium;
  String? imageSmall;
  String? imageSource;
  String? imageName;
  List<dynamic>? gallery;
  String? shortUrl;
  dynamic youtubeLink;
  List<dynamic>? tags;
  dynamic expiredAt;
  String? language;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['category'] = category?.toJson();
    map['title'] = title;
    map['short_description'] = shortDescription;
    map['relates_to'] = relatesTo;
    map['description'] = description;
    map['slug'] = slug;
    map['author_offered'] = authorOffered;
    map['publish'] = publish;
    map['is_pinned'] = isPinned;
    map['number_of_views'] = numberOfViews;
    map['image'] = image;
    map['image_extra_large'] = imageExtraLarge;
    map['image_large'] = imageLarge;
    map['image_medium'] = imageMedium;
    map['image_small'] = imageSmall;
    map['image_source'] = imageSource;
    map['image_name'] = imageName;
    map['gallery'] = gallery;
    map['short_url'] = shortUrl;
    map['youtube_link'] = youtubeLink;
    map['tags'] = tags;
    map['expired_at'] = expiredAt;
    map['language'] = language;
    return map;
  }
}
