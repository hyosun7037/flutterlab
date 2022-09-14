import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterlab/scroll_to_top/scroll_to_top_viewmodel.dart';
import 'package:get/get.dart';

class ScrollToTopStatePage extends StatefulWidget {
  const ScrollToTopStatePage({Key? key}) : super(key: key);

  @override
  State<ScrollToTopStatePage> createState() => _ScrollToTopStatePage();
}

class _ScrollToTopStatePage extends State<ScrollToTopStatePage> with TickerProviderStateMixin {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  // 스크롤 최상단 이동 버튼을 눌렀을 때, 리스트의 최상단으로 이동하는 코드
  void _scrollToTop() {
    _scrollController.animateTo(0.0, duration: const Duration(seconds: 1), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    var primaryController = PrimaryScrollController.of(context);
    final scrollToTopViewmodel = Get.put(ScrollToTopViewmodel());
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => primaryController?.animateTo(0, duration: const Duration(seconds: 1), curve: Curves.linear),
        child: Icon(Icons.keyboard_arrow_up),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
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
