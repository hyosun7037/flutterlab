import 'package:flutter/material.dart';
import 'package:flutterlab/crud/view/mypage.dart';
import 'package:flutterlab/expandable/expandable_page.dart';
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
        // home: const ExpandablePage());
        home: MyPage());
  }
}
