import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:platina_uz/features/article/presentation/pages/article_screen.dart';
import 'package:platina_uz/features/home/domain/repositories/posts_repository.dart';
import 'package:platina_uz/features/home/presentation/pages/home_screen.dart';
import 'package:platina_uz/features/news_feed/presentation/pages/news_feed_screen.dart';
import 'package:platina_uz/features/popular/presentation/pages/popular_screen.dart';
import 'package:platina_uz/features/videos/presentation/pages/videos_screen.dart';
import 'package:platina_uz/generated/assets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List<String> drawerItems = [
    'Siyosat',
    'Iqtisod',
    'Jaxon',
    'Jamiyat',
    'Taxlil',
    'Sport',
    'Davlat Haridlari',
    'Maqola',
  ];

  List<String> langs = [
    'Uzb',
    "O'zb",
    'Rus',
    'Eng',
  ];
  int drawerItem = 0;
  PostRepository postRepository = PostRepository();
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    postRepository.getPost();
  }
  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).padding.top;
    const appBarHeight = kToolbarHeight;
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(Assets.assetsTitleLogo),
        actions: [IconButton(onPressed: () {}, icon: const Icon(IconlyLight.search))],
        elevation: 5,
      ),
      drawerScrimColor: Colors.transparent,
      drawer: buildDrawer(),
      body: _buildScreens[currentIndex],
      backgroundColor: const Color(0xFFF2F2F2),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int selectedIndex) {
          setState(() {
            currentIndex = selectedIndex;
          });
        },
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        elevation: 5,
        currentIndex: currentIndex,
        iconSize: 20,
        items: bottomNavigationBarItems,
      ),
    );
  }

  List<BottomNavigationBarItem> bottomNavigationBarItems = [
    const BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Asosiy'),
    BottomNavigationBarItem(icon: SvgPicture.asset(Assets.assetsNewsFeed), label: 'Lenta'),
    BottomNavigationBarItem(icon: SvgPicture.asset(Assets.assetsPopular), label: 'Ommabop'),
    const BottomNavigationBarItem(icon: Icon(IconlyLight.paper), label: 'Maqola'),
    const BottomNavigationBarItem(icon: Icon(Icons.play_circle_fill_outlined), label: 'Video'),
  ];

  final List<Widget?> _buildScreens = [
    const HomeScreen(),
    const NewsFeedScreen(),
    const PopularScreen(),
    const ArticleScreen(),
    const VideosScreen(),
  ];

  Widget buildDrawer() {
    final statusBarHeight = MediaQuery.of(context).padding.top;
    const appBarHeight = kToolbarHeight;
    // setState(() {
    //   // context.read<HomeBloc>().add(UpdatedFilter(filter: filter[index].copyWith(value: !filter[index].value)));
    //   filterItems[index].isSelected = !filterItems[index].isSelected;
    //   if (filterItems[index].isSelected) {
    //     selectingFilterValue!.add(
    //       filterItems[index].name,
    //     );
    //   } else if (filterItems[index].isSelected == false) {
    //     selectingFilterValue?.removeWhere((element) => element == filterItems[index].name);
    //   }
    // });
    // var selectingFilterValue = <String>[];
    // var orderValue = '';
    // List<FilterItems> filterItems = FilterItems.filterItems;
    // late List<String?>? filterName = [];
    // late List<CarModel> carFilterModel = [];
    // List<CarModel> carsModel = <CarModel>[];
    return Container(
      padding: EdgeInsets.only(top: statusBarHeight + appBarHeight + 1), //adding one pixel for appbar shadow
      child: Drawer(
        width: 290,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              width: 250,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        drawerItem = 0;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: drawerItem == 0 ? Colors.tealAccent.withOpacity(0.2) : Colors.transparent,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        children: [
                          Transform.rotate(
                            angle: math.pi / 2,
                            child: Icon(
                              Icons.hexagon,
                              size: 15,
                              color: drawerItem == 0 ? Colors.green : Colors.grey,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Siyosat',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        drawerItem = 1;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: drawerItem == 1 ? Colors.tealAccent.withOpacity(0.2) : Colors.transparent,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        children: [
                          Transform.rotate(
                            angle: math.pi / 2,
                            child: Icon(
                              Icons.hexagon,
                              size: 15,
                              color: drawerItem == 1 ? Colors.green : Colors.grey,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Iqtisod',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        drawerItem = 2;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: drawerItem == 2 ? Colors.tealAccent.withOpacity(0.2) : Colors.transparent,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        children: [
                          Transform.rotate(
                            angle: math.pi / 2,
                            child: Icon(
                              Icons.hexagon,
                              size: 15,
                              color: drawerItem == 2 ? Colors.green : Colors.grey,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Jaxon',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        drawerItem = 3;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: drawerItem == 3 ? Colors.tealAccent.withOpacity(0.2) : Colors.transparent,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        children: [
                          Transform.rotate(
                            angle: math.pi / 2,
                            child: Icon(
                              Icons.hexagon,
                              size: 15,
                              color: drawerItem == 3 ? Colors.green : Colors.grey,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Jamiyat',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        drawerItem = 4;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: drawerItem == 4 ? Colors.tealAccent.withOpacity(0.2) : Colors.transparent,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        children: [
                          Transform.rotate(
                            angle: math.pi / 2,
                            child: Icon(
                              Icons.hexagon,
                              size: 15,
                              color: drawerItem == 4 ? Colors.green : Colors.grey,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Taxlil',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        drawerItem = 5;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: drawerItem == 5 ? Colors.tealAccent.withOpacity(0.2) : Colors.transparent,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        children: [
                          Transform.rotate(
                            angle: math.pi / 2,
                            child: Icon(
                              Icons.hexagon,
                              size: 15,
                              color: drawerItem == 5 ? Colors.green : Colors.grey,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Sport',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        drawerItem = 6;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: drawerItem == 6 ? Colors.tealAccent.withOpacity(0.2) : Colors.transparent,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        children: [
                          Transform.rotate(
                            angle: math.pi / 2,
                            child: Icon(
                              Icons.hexagon,
                              size: 15,
                              color: drawerItem == 6 ? Colors.green : Colors.grey,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Davlat Haridlari',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        drawerItem = 7;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: drawerItem == 7 ? Colors.tealAccent.withOpacity(0.2) : Colors.transparent,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        children: [
                          Transform.rotate(
                            angle: math.pi / 2,
                            child: Icon(
                              Icons.hexagon,
                              size: 15,
                              color: drawerItem == 7 ? Colors.green : Colors.grey,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Maqola',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              indent: 15,
              endIndent: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: langs.map(Text.new).toList(),
              ),
            ),
            const Divider(
              indent: 15,
              endIndent: 15,
            ),
            Container(
              height: 150,
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.tealAccent.withOpacity(0.2),
                          ),
                          width: 125,
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.telegram,
                                size: 15,
                                color: Colors.blue,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'platinauzb',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.tealAccent.withOpacity(0.2),
                          ),
                          width: 125,
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: Row(
                            children: [
                              Icon(
                                MdiIcons.instagram,
                                size: 15,
                                color: Colors.orange,
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                'platinauzb',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.tealAccent.withOpacity(0.2),
                          ),
                          width: 125,
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.facebook,
                                size: 15,
                                color: Colors.blueAccent,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'platinauz',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.tealAccent.withOpacity(0.2),
                          ),
                          width: 125,
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: Row(
                            children: [
                              Icon(
                                MdiIcons.youtube,
                                size: 15,
                                color: Colors.red,
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                'platinauz',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.tealAccent.withOpacity(0.2),
                          ),
                          width: 125,
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: Row(
                            children: [
                              Icon(
                                MdiIcons.twitter,
                                size: 15,
                                color: Colors.blue,
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                'platinauz',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.tealAccent.withOpacity(0.2),
                          ),
                          width: 125,
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.tiktok,
                                size: 15,
                                color: Colors.black,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'platinauz',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
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
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
