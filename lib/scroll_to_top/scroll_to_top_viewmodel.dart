import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScrollToTopViewmodel extends GetxController with GetSingleTickerProviderStateMixin {
  static ScrollToTopViewmodel get to => Get.find();
  var scrollController = ScrollController();

  @override
  void onInit() {
    scrollController.addListener(() {});
    super.onInit();
  }

  // 스크롤 최상단 이동
  void scrollToTop(ScrollController? primaryController) async {
    if (scrollController.position.pixels > 0.0) {
      // scrollController.animateTo(-100, duration: const Duration(seconds: 3), curve: Curves.linear);
      primaryController?.animateTo(0, duration: const Duration(seconds: 1), curve: Curves.linear);
      update();
    }
  }
}
