import 'dart:math' as math;

import 'package:flag/flag_enum.dart';
import 'package:flag/flag_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:platina_uz/features/home/domain/repositories/posts_repository.dart';
import 'package:platina_uz/generated/assets.dart';

/// Home Screen
class HomeScreen extends StatefulWidget {
  /// Home Screen constructor
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  bool isCurrencyVisible = false;
  bool isWeaklyWeatherVisible = false;
  PostRepository postRepository = PostRepository();
  initState() {
    super.initState();
    postRepository.getPost();
  }

  List<Widget> buildLatestNews(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final latestNews = [
      Column(
        children: [
          Divider(
            thickness: 1,
            color: Colors.blueAccent.withOpacity(0.2),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 15, bottom: 15, right: 5),
                width: width * 0.6,
                height: 120,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5),
                    SizedBox(
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Jamiyat',
                            style: TextStyle(color: Colors.orange, fontSize: 11),
                          ),
                          Text(
                            '20 daqiqa avval',
                            style: TextStyle(color: Colors.grey, fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: InkWell(
                  onTap: () {},
                  child: Stack(
                    children: [
                      Container(
                        width: width * 0.3,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7),
                        child: SvgPicture.asset(
                          Assets.assetsTitleLogo,
                          width: 30,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        right: 7,
                        top: 7,
                        child: InkWell(
                          onTap: () {},
                          child: const Row(
                            children: [
                              Icon(
                                Icons.telegram,
                                size: 5,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '@platinauzb',
                                style: TextStyle(fontSize: 5, fontWeight: FontWeight.w600, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 7,
                        left: 7,
                        right: 7,
                        child: SizedBox(
                          height: 20,
                          width: width * 0.3,
                          child: const Text(
                            'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                            softWrap: true,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 7,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ];
    return latestNews;
  }

  List<Widget> buildEditorsContest(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final listEditorsContest = [
      Padding(
        padding: const EdgeInsets.only(right: 8),
        child: InkWell(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: width * 0.7,
                    height: 230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: SvgPicture.asset(
                      Assets.assetsTitleLogo,
                      width: 70,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    right: 15,
                    top: 15,
                    child: InkWell(
                      onTap: () {},
                      child: const Row(
                        children: [
                          Icon(
                            Icons.telegram,
                            size: 10,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5),
                          Text(
                            '@platinauzb',
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    left: 15,
                    child: SizedBox(
                      height: 50,
                      width: width - 140,
                      child: const Text(
                        'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                        softWrap: true,
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: width * 0.7,
                padding: const EdgeInsets.all(5),
                child: const Text(
                  'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                width: 150,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Jamiyat',
                      style: TextStyle(color: Colors.orange, fontSize: 11),
                    ),
                    Text(
                      '20 daqiqa avval',
                      style: TextStyle(color: Colors.grey, fontSize: 11),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 8),
        child: InkWell(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: width * 0.7,
                    height: 230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: SvgPicture.asset(
                      Assets.assetsTitleLogo,
                      width: 70,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    right: 15,
                    top: 15,
                    child: InkWell(
                      onTap: () {},
                      child: const Row(
                        children: [
                          Icon(
                            Icons.telegram,
                            size: 10,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5),
                          Text(
                            '@platinauzb',
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    left: 15,
                    child: SizedBox(
                      height: 50,
                      width: width - 140,
                      child: const Text(
                        'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                        softWrap: true,
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: width * 0.7,
                padding: const EdgeInsets.all(5),
                child: const Text(
                  'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Jamiyat',
                      style: TextStyle(color: Colors.orange, fontSize: 11),
                    ),
                    Text(
                      '20 daqiqa avval',
                      style: TextStyle(color: Colors.grey, fontSize: 11),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ];
    return listEditorsContest;
  }

  List<Widget> buildArticles(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final listArticles = [
      Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Column(
          children: [
            InkWell(
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: width,
                        height: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: SvgPicture.asset(
                          Assets.assetsTitleLogo,
                          width: 70,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        right: 15,
                        top: 15,
                        child: InkWell(
                          onTap: () {},
                          child: const Row(
                            children: [
                              Icon(
                                Icons.telegram,
                                size: 10,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '@platinauzb',
                                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        left: 15,
                        child: SizedBox(
                          height: 50,
                          width: width - 50,
                          child: const Text(
                            'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                            softWrap: true,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: width,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: const Text(
                      'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.blueAccent.withOpacity(0.2),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Column(
          children: [
            InkWell(
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: width,
                        height: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: SvgPicture.asset(
                          Assets.assetsTitleLogo,
                          width: 70,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        right: 15,
                        top: 15,
                        child: InkWell(
                          onTap: () {},
                          child: const Row(
                            children: [
                              Icon(
                                Icons.telegram,
                                size: 10,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '@platinauzb',
                                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        left: 15,
                        child: SizedBox(
                          height: 50,
                          width: width - 50,
                          child: const Text(
                            'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                            softWrap: true,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: width,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: const Text(
                      'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.blueAccent.withOpacity(0.2),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Column(
          children: [
            InkWell(
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: width,
                        height: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: SvgPicture.asset(
                          Assets.assetsTitleLogo,
                          width: 70,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        right: 15,
                        top: 15,
                        child: InkWell(
                          onTap: () {},
                          child: const Row(
                            children: [
                              Icon(
                                Icons.telegram,
                                size: 10,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '@platinauzb',
                                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        left: 15,
                        child: SizedBox(
                          height: 50,
                          width: width - 50,
                          child: const Text(
                            'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                            softWrap: true,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: width,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: const Text(
                      'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.blueAccent.withOpacity(0.2),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Column(
          children: [
            InkWell(
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: width,
                        height: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: SvgPicture.asset(
                          Assets.assetsTitleLogo,
                          width: 70,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        right: 15,
                        top: 15,
                        child: InkWell(
                          onTap: () {},
                          child: const Row(
                            children: [
                              Icon(
                                Icons.telegram,
                                size: 10,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '@platinauzb',
                                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        left: 15,
                        child: SizedBox(
                          height: 50,
                          width: width - 50,
                          child: const Text(
                            'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                            softWrap: true,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: width,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: const Text(
                      'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.blueAccent.withOpacity(0.2),
            ),
          ],
        ),
      ),
    ];
    return listArticles;
  }

  List<Widget> buildPublicProcurement(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final listPublicProcurement = [
      Column(
        children: [
          Divider(
            thickness: 1,
            color: Colors.blueAccent.withOpacity(0.2),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 15, bottom: 15, right: 5),
                width: width * 0.6,
                height: 120,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '20 daqiqa avval',
                      style: TextStyle(color: Colors.grey, fontSize: 11),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: InkWell(
                  onTap: () {},
                  child: Stack(
                    children: [
                      Container(
                        width: width * 0.3,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7),
                        child: SvgPicture.asset(
                          Assets.assetsTitleLogo,
                          width: 30,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        right: 7,
                        top: 7,
                        child: InkWell(
                          onTap: () {},
                          child: const Row(
                            children: [
                              Icon(
                                Icons.telegram,
                                size: 5,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '@platinauzb',
                                style: TextStyle(fontSize: 5, fontWeight: FontWeight.w600, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 7,
                        left: 7,
                        right: 7,
                        child: SizedBox(
                          height: 20,
                          width: width * 0.3,
                          child: const Text(
                            'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                            softWrap: true,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 7,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      Column(
        children: [
          Divider(
            thickness: 1,
            color: Colors.blueAccent.withOpacity(0.2),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 15, bottom: 15, right: 5),
                width: width * 0.6,
                height: 120,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '20 daqiqa avval',
                      style: TextStyle(color: Colors.grey, fontSize: 11),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: InkWell(
                  onTap: () {},
                  child: Stack(
                    children: [
                      Container(
                        width: width * 0.3,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7),
                        child: SvgPicture.asset(
                          Assets.assetsTitleLogo,
                          width: 30,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        right: 7,
                        top: 7,
                        child: InkWell(
                          onTap: () {},
                          child: const Row(
                            children: [
                              Icon(
                                Icons.telegram,
                                size: 5,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '@platinauzb',
                                style: TextStyle(fontSize: 5, fontWeight: FontWeight.w600, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 7,
                        left: 7,
                        right: 7,
                        child: SizedBox(
                          height: 20,
                          width: width * 0.3,
                          child: const Text(
                            'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                            softWrap: true,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 7,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      Column(
        children: [
          Divider(
            thickness: 1,
            color: Colors.blueAccent.withOpacity(0.2),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 15, bottom: 15, right: 5),
                width: width * 0.6,
                height: 120,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '20 daqiqa avval',
                      style: TextStyle(color: Colors.grey, fontSize: 11),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: InkWell(
                  onTap: () {},
                  child: Stack(
                    children: [
                      Container(
                        width: width * 0.3,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7),
                        child: SvgPicture.asset(
                          Assets.assetsTitleLogo,
                          width: 30,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        right: 7,
                        top: 7,
                        child: InkWell(
                          onTap: () {},
                          child: const Row(
                            children: [
                              Icon(
                                Icons.telegram,
                                size: 5,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '@platinauzb',
                                style: TextStyle(fontSize: 5, fontWeight: FontWeight.w600, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 7,
                        left: 7,
                        right: 7,
                        child: SizedBox(
                          height: 20,
                          width: width * 0.3,
                          child: const Text(
                            'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                            softWrap: true,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 7,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      Column(
        children: [
          Divider(
            thickness: 1,
            color: Colors.blueAccent.withOpacity(0.2),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 15, bottom: 15, right: 5),
                width: width * 0.6,
                height: 120,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '20 daqiqa avval',
                      style: TextStyle(color: Colors.grey, fontSize: 11),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: InkWell(
                  onTap: () {},
                  child: Stack(
                    children: [
                      Container(
                        width: width * 0.3,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7),
                        child: SvgPicture.asset(
                          Assets.assetsTitleLogo,
                          width: 30,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        right: 7,
                        top: 7,
                        child: InkWell(
                          onTap: () {},
                          child: const Row(
                            children: [
                              Icon(
                                Icons.telegram,
                                size: 5,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '@platinauzb',
                                style: TextStyle(fontSize: 5, fontWeight: FontWeight.w600, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 7,
                        left: 7,
                        right: 7,
                        child: SizedBox(
                          height: 20,
                          width: width * 0.3,
                          child: const Text(
                            'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                            softWrap: true,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 7,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ];
    return listPublicProcurement;
  }

  List<Widget> buildBusiness(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final listBusiness = [
      Padding(
        padding: const EdgeInsets.only(right: 8),
        child: InkWell(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width * 0.7,
                height: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
              ),
              Container(
                width: width * 0.7,
                padding: const EdgeInsets.all(5),
                child: const Text(
                  'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 8),
        child: InkWell(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width * 0.7,
                height: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
              ),
              Container(
                width: width * 0.7,
                padding: const EdgeInsets.all(5),
                child: const Text(
                  'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 8),
        child: InkWell(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width * 0.7,
                height: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
              ),
              Container(
                width: width * 0.7,
                padding: const EdgeInsets.all(5),
                child: const Text(
                  'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 8),
        child: InkWell(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width * 0.7,
                height: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
              ),
              Container(
                width: width * 0.7,
                padding: const EdgeInsets.all(5),
                child: const Text(
                  'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 8),
        child: InkWell(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width * 0.7,
                height: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
              ),
              Container(
                width: width * 0.7,
                padding: const EdgeInsets.all(5),
                child: const Text(
                  'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ];
    return listBusiness;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      primary: true,
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            isCurrencyVisible = !isCurrencyVisible;
                          });
                        },
                        child: Row(
                          children: [
                            Flag.fromCode(
                              FlagsCode.US,
                              height: 20,
                              width: 20,
                              borderRadius: 10,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 7),
                            const Text(
                              'USD',
                              style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              '11318.74',
                              style: TextStyle(fontSize: 15, color: Colors.red, fontWeight: FontWeight.w500),
                            ),
                            const Icon(
                              CupertinoIcons.arrow_down_right,
                              color: Colors.red,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isWeaklyWeatherVisible = !isWeaklyWeatherVisible;
                          });
                        },
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              Assets.animatedRainy1,
                              width: 35,
                              height: 35,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              '+9',
                              style: TextStyle(fontSize: 15),
                            ),
                            const Text(
                              '℃',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: isCurrencyVisible,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Flag.fromCode(
                              FlagsCode.EU,
                              height: 20,
                              width: 20,
                              borderRadius: 10,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 7),
                            const Text(
                              'EUR',
                              style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              '12242.35',
                              style: TextStyle(fontSize: 15, color: Colors.red, fontWeight: FontWeight.w500),
                            ),
                            const Icon(
                              CupertinoIcons.arrow_down_right,
                              color: Colors.red,
                              size: 15,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Flag.fromCode(
                              FlagsCode.RU,
                              height: 20,
                              width: 20,
                              borderRadius: 10,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 7),
                            const Text(
                              'RUB',
                              style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              '164.94',
                              style: TextStyle(fontSize: 15, color: Colors.red, fontWeight: FontWeight.w500),
                            ),
                            const Icon(
                              CupertinoIcons.arrow_down_right,
                              color: Colors.red,
                              size: 15,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                AnimatedContainer(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.all(15),
                  duration: Duration(milliseconds: 700),
                  curve: Curves.fastOutSlowIn,
                  height: isWeaklyWeatherVisible ? 150 : 0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            children: [
                              Text(
                                '16 yan',
                                style: TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                              Text(
                                'Kecha',
                                style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),
                              ),
                              SvgPicture.asset(
                                Assets.animatedDay,
                                width: 64,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                '-7º -18º',
                                style: TextStyle(fontSize: isWeaklyWeatherVisible ? 15 : 0, color: Colors.black, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            children: [
                              Text(
                                '17 yan',
                                style: TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                              Text(
                                'Bugun',
                                style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),
                              ),
                              SvgPicture.asset(
                                Assets.animatedDay,
                                // height: 100,
                                width: 64,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                '-3º -12º',
                                style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Column(
                            children: [
                              Text(
                                '18 yan',
                                style: TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                              Text(
                                'Ertaga',
                                style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),
                              ),
                              SvgPicture.asset(
                                Assets.animatedDay,
                                // height: 100,
                                width: 64,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                '-1º -10º',
                                style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Column(
                            children: [
                              Text(
                                '19 yan',
                                style: TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                              Text(
                                'Payshanba',
                                style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),
                              ),
                              SvgPicture.asset(
                                Assets.animatedDay,
                                // height: 100,
                                width: 64,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                '-1º -9º',
                                style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Column(
                            children: [
                              Text(
                                '20 yan',
                                style: TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                              Text(
                                'Juma',
                                style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),
                              ),
                              SvgPicture.asset(
                                Assets.animatedCloudy,
                                // height: 100,
                                width: 64,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                '-2º -9º',
                                style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Column(
                            children: [
                              Text(
                                '21 yan',
                                style: TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                              Text(
                                'Shanba',
                                style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),
                              ),
                              SvgPicture.asset(
                                Assets.animatedSnowy4,
                                // height: 100,
                                width: 64,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                '-10º -18º',
                                style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Column(
                            children: [
                              Text(
                                '22 yan',
                                style: TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                              Text(
                                'Yakshanba',
                                style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),
                              ),
                              SvgPicture.asset(
                                Assets.animatedSnowy6,
                                // height: 100,
                                width: 64,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                '-15º -23º',
                                style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Transform.rotate(
                          angle: math.pi / 2,
                          child: const Icon(
                            Icons.hexagon,
                            size: 11,
                            color: Color(0xFF1D3068),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Muxim yangiliklar',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1D3068),
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.arrow_forward,
                        size: 18,
                        color: Color(0xFF1D3068),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Stack(
                    children: [
                      Container(
                        width: width,
                        height: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: SvgPicture.asset(
                          Assets.assetsTitleLogo,
                          width: 70,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        right: 15,
                        top: 15,
                        child: InkWell(
                          onTap: () {},
                          child: const Row(
                            children: [
                              Icon(
                                Icons.telegram,
                                size: 10,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '@platinauzb',
                                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        left: 15,
                        child: SizedBox(
                          height: 50,
                          width: width - 75,
                          child: const Text(
                            'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                            softWrap: true,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  width: width,
                  height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Ўйлайман, шу ёшида илм олишга ҳаракат қиляпти. Сиз эса вақт ўтиб кетди, деб',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                      TextButton(
                        style: const ButtonStyle(padding: MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.zero)),
                        onPressed: () {},
                        child: const Text("davomini o'qish", style: TextStyle(color: Colors.blue)),
                      ),
                      const SizedBox(
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Jamiyat',
                              style: TextStyle(color: Colors.orange, fontSize: 11),
                            ),
                            Text(
                              '20 daqiqa avval',
                              style: TextStyle(color: Colors.grey, fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: buildLatestNews(context),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            width: width,
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Transform.rotate(
                          angle: math.pi / 2,
                          child: const Icon(
                            Icons.hexagon,
                            size: 11,
                            color: Color(0xFF1D3068),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Muxarrirlar tanlovi',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1D3068),
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.arrow_forward,
                        size: 18,
                        color: Color(0xFF1D3068),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: buildEditorsContest(context),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            width: width,
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Transform.rotate(
                          angle: math.pi / 2,
                          child: const Icon(
                            Icons.hexagon,
                            size: 11,
                            color: Color(0xFF1D3068),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Maqolalar',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1D3068),
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.arrow_forward,
                        size: 18,
                        color: Color(0xFF1D3068),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  child: Column(
                    children: buildArticles(context),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            width: width,
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Transform.rotate(
                          angle: math.pi / 2,
                          child: const Icon(
                            Icons.hexagon,
                            size: 11,
                            color: Color(0xFF1D3068),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Davlat haridlari',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1D3068),
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.arrow_forward,
                        size: 18,
                        color: Color(0xFF1D3068),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Stack(
                          children: [
                            Container(
                              width: width,
                              height: 230,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.red,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: SvgPicture.asset(
                                Assets.assetsTitleLogo,
                                width: 70,
                                color: Colors.white,
                              ),
                            ),
                            Positioned(
                              right: 15,
                              top: 15,
                              child: InkWell(
                                onTap: () {},
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.telegram,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '@platinauzb',
                                      style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 15,
                              left: 15,
                              child: SizedBox(
                                height: 50,
                                width: width - 75,
                                child: const Text(
                                  'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                                  softWrap: true,
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        width: width,
                        height: 140,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Ўйлайман, шу ёшида илм олишга ҳаракат қиляпти. Сиз эса вақт ўтиб кетди, деб',
                              style: TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                            Text(
                              '20 daqiqa avval',
                              style: TextStyle(color: Colors.grey, fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                      Column(children: buildPublicProcurement(context)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            width: width,
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Transform.rotate(
                          angle: math.pi / 2,
                          child: const Icon(
                            Icons.hexagon,
                            size: 11,
                            color: Color(0xFF1D3068),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Biznes',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1D3068),
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.arrow_forward,
                        size: 18,
                        color: Color(0xFF1D3068),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: buildBusiness(context),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
