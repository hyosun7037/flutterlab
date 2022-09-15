import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScrollToTopViewmodel extends GetxController with GetSingleTickerProviderStateMixin {
  static ScrollToTopViewmodel get to => Get.find();
  var scrollController = ScrollController();

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(() {});
  }

  // 스크롤 최상단 이동
  Future scrollToTop(position, ScrollController? primaryController) async {
    if (primaryController!.position.pixels > 0) {
      primaryController.animateTo(0, duration: const Duration(seconds: 1), curve: Curves.linear);
      update();
    }
  }
}
