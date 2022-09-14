import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterlab/scroll_to_top/scroll_to_top_viewmodel.dart';
import 'package:get/get.dart';

class ScrollToTop extends StatelessWidget {
  const ScrollToTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollToTopViewmodel = Get.put(ScrollToTopViewmodel());

    var primaryController = PrimaryScrollController.of(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => scrollToTopViewmodel.scrollToTop(primaryController),
        child: Icon(Icons.keyboard_arrow_up),
      ),
      body: SingleChildScrollView(
        controller: scrollToTopViewmodel.scrollController,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Container(
                height: 100,
                color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                margin: EdgeInsets.all(30),
                child: Text(
                  '테스트',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                height: 100,
                color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                margin: EdgeInsets.all(30),
                child: Text(
                  '테스트',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                height: 100,
                color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                margin: EdgeInsets.all(30),
                child: Text(
                  '테스트',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                height: 100,
                color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                margin: EdgeInsets.all(30),
                child: Text(
                  '테스트',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                height: 100,
                color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                margin: EdgeInsets.all(30),
                child: Text(
                  '테스트',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                height: 100,
                color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                margin: EdgeInsets.all(30),
                child: Text(
                  '테스트',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                height: 100,
                color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                margin: EdgeInsets.all(30),
                child: Text(
                  '테스트',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                height: 100,
                color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                margin: EdgeInsets.all(30),
                child: Text(
                  '테스트',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                height: 100,
                color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                margin: EdgeInsets.all(30),
                child: Text(
                  '테스트',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                height: 100,
                color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                margin: EdgeInsets.all(30),
                child: Text(
                  '테스트',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                height: 100,
                color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                margin: EdgeInsets.all(30),
                child: Text(
                  '테스트',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
