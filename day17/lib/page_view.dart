import 'package:day17/page1.dart';
import 'package:day17/page2.dart';
import 'package:day17/page3.dart';
import 'package:flutter/material.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController pageController = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                color: Colors.pink,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      color: Colors.pink,
                      onPressed: () {
                        pageController.jumpToPage(0);
                      },
                      child: Text('Page One'),
                    ),
                    MaterialButton(
                      color: Colors.pink,
                      onPressed: () {
                        pageController.jumpToPage(1);
                      },
                      child: Text('Page Two'),
                    ),
                    MaterialButton(
                      color: Colors.pink,
                      onPressed: () {
                        pageController.jumpToPage(2);
                      },
                      child: Text('Page Three'),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: PageView(
                controller: pageController,
                children: [
                  Page1(),
                  Page2(),
                  Page3(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
