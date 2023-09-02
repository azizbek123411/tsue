import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../home_page/home_page.dart';

class BottomNavBar extends StatefulWidget {
  static const String id = "bottom_nav_bar";
  int initialIndex;

  BottomNavBar({Key? key, required this.initialIndex}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  PageController pageController = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(
      initialPage: widget.initialIndex,
    );
    if (widget.initialIndex == 2) {
      currentIndex = 2;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: const [
              HomePage(),
            ],
            onPageChanged: (int index) {
              setState(
                () {
                  currentIndex = index;
                },
              );
            },
          ),
        ],
      ),
      // floatingActionButton: navBar(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: navBar(),
    );
  }

  /// bottom navigation bar widget
  Widget navBar() {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaY: 10,
          sigmaX: 10,
        ),
        child: Container(
          margin: const EdgeInsets.only(bottom: 10,left: 10,right: 10),
          height: size.height * 0.088,
          width: size.width * 0.8,
          decoration: BoxDecoration(
            boxShadow:[
              BoxShadow(
                offset: const Offset(0,3),
                blurRadius: 5,
                spreadRadius: 2,
                color: Colors.indigo.shade500,
              )
            ],
              borderRadius: BorderRadius.circular(20),
              color: Colors.indigo.shade900,
              ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        pageController.jumpToPage(0);
                        currentIndex = 0;
                      });
                    },
                    icon: Icon(
                      currentIndex == 0 ? IconlyBold.home : IconlyLight.home,
                      color: currentIndex == 0 ? Colors.white : Colors.white54,
                      size: 30,
                    ),
                  ),
                  Text(
                    "Asosiy",
                    style: TextStyle(
                        color:
                            currentIndex == 0 ? Colors.white : Colors.white54),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          pageController.jumpToPage(1);
                          currentIndex = 1;
                        });
                      },
                      child: Image(
                        color:
                            currentIndex == 1 ? Colors.white : Colors.white54,
                        height: 34,
                        image: const AssetImage(
                            "assets/images/ddd-removebg-preview.png"),
                      ),
                    ),
                  ),
                  Text(
                    "Rahbariyat",
                    style: TextStyle(
                        color:
                            currentIndex == 1 ? Colors.white : Colors.white54),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        pageController.jumpToPage(3);
                        currentIndex = 3;
                      });
                    },
                    icon: Icon(
                      currentIndex == 3 ? IconlyBold.call : IconlyLight.call,
                      color: currentIndex == 3 ? Colors.white : Colors.white54,
                      size: 30,
                    ),
                  ),
                  Text(
                    "Aloqa",
                    style: TextStyle(
                        color:
                            currentIndex == 3 ? Colors.white : Colors.white54),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        pageController.jumpToPage(4);
                        currentIndex = 4;
                      });
                    },
                    icon: Icon(
                      currentIndex == 4
                          ? IconlyBold.profile
                          : IconlyLight.profile,
                      color: currentIndex == 4 ? Colors.white : Colors.white54,
                      size: 30,
                    ),
                  ),
                  Text(
                    "Boshqa",
                    style: TextStyle(
                        color:
                            currentIndex == 4 ? Colors.white : Colors.white54),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
