import 'package:flutter_dotenv/flutter_dotenv.dart';

class Constants {
  static const String BASE_URL = 'https://cp.dev.platina.uz/uz/api/';
  static const String MENU_URL = 'menu/';
  static const String BUSINESS_URL = 'posts/business/';
  static const String POST_URL = 'posts/';
  static const String ARTICLE_URL = 'articles/';
  static const String POPULAR_POST_URL = 'popular-posts/';
  static Map<String, String> API_KEY_VALUE = {
    "key": dotenv.get('AUTHORIZATIONS_API_KEY_NAME'),
    "value": dotenv.get('AUTHORIZATIONS_API_KEY_VALUE'),
  };
}
