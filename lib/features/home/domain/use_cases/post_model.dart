// class PostModel {
//   PostModel({
//       this.count,
//       this.next,
//       this.previous,
//       this.results,});
//
//   PostModel.fromJson(dynamic json) {
//     count = json['count'];
//     next = json['next'];
//     previous = json['previous'];
//     if (json['results'] != null) {
//       results = [];
//       json['results'].forEach((v) {
//         results?.add(Results.fromJson(v));
//       });
//     }
//   }
//   int? count;
//   String? next;
//   dynamic previous;
//   List<Results>? results;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['count'] = count;
//     map['next'] = next;
//     map['previous'] = previous;
//     if (results != null) {
//       map['results'] = results?.map((v) => v.toJson()).toList();
//     }
//     return map;
//   }
// }
//
// /// id : 14551
// /// category : {"id":46,"name":"Давлат харидлари","slug":"davlat-xaridlari","color":"#6D01D8"}
// /// title : "Энди ҳамма автодилерлар машина импорт қилиши мумкин"
// /// short_description : "<p>Бу дегани энди барча турдаги автодилерлар хориждан истаганча машина импорт қилиши мумкин.</p>\r\n\r\n<p>&nbsp;</p>"
// /// relates_to : null
// /// description : "<p>Ҳукумат қарори билан импорт автомобилларни фақат ишлаб чиқарувчиларнинг расмий дилерлари орқали сотиш талаби бекор қилинди.</p>\r\n\r\n<p>Бу дегани энди барча турдаги автодилерлар хориждан истаганча машина импорт қилиши мумкин.</p>\r\n\r\n<p>Шунингдек, электр энергиясини электр таъминоти шартномасида белгиланган ҳажмлардан ортиқча истеъмол қилган юридик шахсларга электр энергияси етказиб беришни тўхтатиб қўйиш амалиёти тугатилди.</p>\r\n\r\n<p>Тадбиркорнинг устав фондини камайтириш тўғрисида қарор қабул қилинганда, кредиторларни ёзма равишда хабардор қилиш ва оммавий ахборот воситаларида бу ҳақда эълон бериш талаби ҳам бекор қилинди.</p>\r\n\r\n<p>Солиқ тўловчиларга солиқ органларининг сайёр солиқ текширувлари ва солиқ аудити натижалари бўйича қабул қилган қарорлари устидан тўғридан-тўғри судга шикоят қилиш ҳуқуқи берилди.</p>"
// /// slug : "endi-hamma-avtodilerlar-mashina-import-qilishi-mumkin"
// /// author_offered : false
// /// publish : "2023-08-17T10:34:15+05:00"
// /// is_pinned : true
// /// number_of_views : 16
// /// image : "/media/images/PXdtwS16333323629506_b.jpg"
// /// image_extra_large : "/media/CACHE/images/PXdtwS16333323629506_b.ac95e883a795.webp"
// /// image_large : "/media/CACHE/images/PXdtwS16333323629506_b.5165e18680be.webp"
// /// image_medium : "/media/CACHE/images/PXdtwS16333323629506_b.b8b960f1b87f.webp"
// /// image_small : "/media/CACHE/images/PXdtwS16333323629506_b.2637d567930d.webp"
// /// image_source : ""
// /// image_name : ""
// /// gallery : []
// /// short_url : "a0b0"
// /// youtube_link : null
// /// tags : []
// /// expired_at : null
// /// language : "uz"
//
// class Results {
//   Results({
//       this.id,
//       this.category,
//       this.title,
//       this.shortDescription,
//       this.relatesTo,
//       this.description,
//       this.slug,
//       this.authorOffered,
//       this.publish,
//       this.isPinned,
//       this.numberOfViews,
//       this.image,
//       this.imageExtraLarge,
//       this.imageLarge,
//       this.imageMedium,
//       this.imageSmall,
//       this.imageSource,
//       this.imageName,
//       this.gallery,
//       this.shortUrl,
//       this.youtubeLink,
//       this.tags,
//       this.expiredAt,
//       this.language,});
//
//   Results.fromJson(dynamic json) {
//     id = json['id'];
//     category = json['category'] != null ? Category.fromJson(json['category']) : null;
//     title = json['title'];
//     shortDescription = json['short_description'];
//     relatesTo = json['relates_to'];
//     description = json['description'];
//     slug = json['slug'];
//     authorOffered = json['author_offered'];
//     publish = json['publish'];
//     isPinned = json['is_pinned'];
//     numberOfViews = json['number_of_views'];
//     image = json['image'];
//     imageExtraLarge = json['image_extra_large'];
//     imageLarge = json['image_large'];
//     imageMedium = json['image_medium'];
//     imageSmall = json['image_small'];
//     imageSource = json['image_source'];
//     imageName = json['image_name'];
//     if (json['gallery'] != null) {
//       gallery = [];
//       json['gallery'].forEach((v) {
//         gallery?.add(Dynamic.fromJson(v));
//       });
//     }
//     shortUrl = json['short_url'];
//     youtubeLink = json['youtube_link'];
//     if (json['tags'] != null) {
//       tags = [];
//       json['tags'].forEach((v) {
//         tags?.add(Dynamic.fromJson(v));
//       });
//     }
//     expiredAt = json['expired_at'];
//     language = json['language'];
//   }
//   int? id;
//   Category? category;
//   String? title;
//   String? shortDescription;
//   dynamic relatesTo;
//   String? description;
//   String? slug;
//   bool? authorOffered;
//   String? publish;
//   bool? isPinned;
//   int? numberOfViews;
//   String? image;
//   String? imageExtraLarge;
//   String? imageLarge;
//   String? imageMedium;
//   String? imageSmall;
//   String? imageSource;
//   String? imageName;
//   List<dynamic>? gallery;
//   String? shortUrl;
//   dynamic youtubeLink;
//   List<dynamic>? tags;
//   dynamic expiredAt;
//   String? language;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['id'] = id;
//     if (category != null) {
//       map['category'] = category?.toJson();
//     }
//     map['title'] = title;
//     map['short_description'] = shortDescription;
//     map['relates_to'] = relatesTo;
//     map['description'] = description;
//     map['slug'] = slug;
//     map['author_offered'] = authorOffered;
//     map['publish'] = publish;
//     map['is_pinned'] = isPinned;
//     map['number_of_views'] = numberOfViews;
//     map['image'] = image;
//     map['image_extra_large'] = imageExtraLarge;
//     map['image_large'] = imageLarge;
//     map['image_medium'] = imageMedium;
//     map['image_small'] = imageSmall;
//     map['image_source'] = imageSource;
//     map['image_name'] = imageName;
//     if (gallery != null) {
//       map['gallery'] = gallery?.map((v) => v.toJson()).toList();
//     }
//     map['short_url'] = shortUrl;
//     map['youtube_link'] = youtubeLink;
//     if (tags != null) {
//       map['tags'] = tags?.map((v) => v.toJson()).toList();
//     }
//     map['expired_at'] = expiredAt;
//     map['language'] = language;
//     return map;
//   }
//
// }
//
// /// id : 46
// /// name : "Давлат харидлари"
// /// slug : "davlat-xaridlari"
// /// color : "#6D01D8"
//
// class Category {
//   Category({
//       this.id,
//       this.name,
//       this.slug,
//       this.color,});
//
//   Category.fromJson(dynamic json) {
//     id = json['id'];
//     name = json['name'];
//     slug = json['slug'];
//     color = json['color'];
//   }
//   int? id;
//   String? name;
//   String? slug;
//   String? color;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['id'] = id;
//     map['name'] = name;
//     map['slug'] = slug;
//     map['color'] = color;
//     return map;
//   }
//
// }