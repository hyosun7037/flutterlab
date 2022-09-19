import 'package:flutter/material.dart';
import 'package:flutterlab/crud/view/mypage.dart';
import 'package:flutterlab/dynamic_tab/dynamic_tab_page.dart';
import 'package:flutterlab/expandable/expandable_page.dart';
import 'package:flutterlab/scroll_to_top/scroll_to_top_page.dart';
import 'package:flutterlab/scroll_to_top/scroll_to_top_state_page.dart';
import 'package:flutterlab/todolist_flutter/lib/todo_list_screen.dart';
import 'package:get/route_manager.dart';

// 앱에서 지원하는 언어 리스트 변수
final supportedLocales = [Locale('en', 'US'), Locale('ko', 'KR')];

// com.munchcrunch 계정
void main() async {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (context, widget) {
          // 시스템 폰트 크기 무시
          return MediaQuery(data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0), child: widget ?? Container());
        },
        title: 'munchCrunch',
        home: Scaffold(
          body: Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 1000,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TestButton(title: 'CRUD', page: MyPage()),
                TestButton(title: 'Expandable', page: ExpandablePage()),
                TestButton(title: 'ScrollToTop', page: ScrollToTop()),
                TestButton(title: 'DynamicTab', page: DynamicTabPage()),
                TestButton(title: 'TodoList', page: TodoListScreen()),
              ],
            ),
          ),
        ));
  }
}

class TestButton extends StatelessWidget {
  const TestButton({
    Key? key,
    this.title = '',
    required this.page,
  }) : super(key: key);

  final String title;
  final dynamic page;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(page),
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        alignment: Alignment.center,
        width: 200,
        height: 50,
        child: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
