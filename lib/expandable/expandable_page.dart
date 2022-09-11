import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ExpandablePage extends StatefulWidget {
  const ExpandablePage({Key? key}) : super(key: key);

  @override
  State<ExpandablePage> createState() => _ExpandablePageState();
}

ExpandableController _expandableController = ExpandableController();

class _ExpandablePageState extends State<ExpandablePage> {
  @override
  void initState() {
    super.initState();
    _expandableController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('토글 테스트')),
      body: Column(
        children: [
          ExpandableNotifier(
            controller: _expandableController,
            child: Column(
              children: [
                ExpandablePanel(
                    theme: ExpandableThemeData(hasIcon: false),
                    header: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                            width: 1,
                            color: Colors.grey,
                          ))),
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('우리 아이 적합도'),
                              _expandableController.expanded ? Icon(Icons.remove) : Icon(Icons.add)
                            ],
                          ),
                        ),
                      ],
                    ),
                    collapsed: SizedBox(height: 0),
                    expanded: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: [
                          // 임시 -> 추후에 그래프로 변경예정

                          Text(_expandableController.expanded.toString()),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 50),
                            width: MediaQuery.of(context).size.width * .5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Text('알러지반응'),
                                  Container(
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context).size.width * .15,
                                    height: MediaQuery.of(context).size.height * .06,
                                    child: Text('위험'),
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 1),
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.orange,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "'단추에게 알러지가 있어요'",
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
          // 주성분 및 보조성분
          ExpandableNotifier(
            child: Column(
              children: [
                ExpandablePanel(
                    theme: ExpandableThemeData(hasIcon: false),
                    header: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(width: 1),
                                  bottom: BorderSide(
                                    width: 1,
                                    color: Colors.grey,
                                  ))),
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text('주성분 및 보조성분'), Icon(Icons.add)],
                          ),
                        ),
                      ],
                    ),
                    collapsed: SizedBox(height: 0),
                    expanded: Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "- 케이지 프리 칠면조",
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            "- 칠면조 간 등 내장육 함유",
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
          // 영양성분 정보
          ExpandableNotifier(
            child: Column(
              children: [
                ExpandablePanel(
                    theme: ExpandableThemeData(hasIcon: false),
                    header: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border:
                                  Border(top: BorderSide(width: 1), bottom: BorderSide(width: 1, color: Colors.grey))),
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text('영양성분 정보'), Icon(Icons.add)],
                          ),
                        ),
                      ],
                    ),
                    collapsed: SizedBox(height: 0),
                    expanded: Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "- 케이지 프리 칠면조",
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            "- 칠면조 간 등 내장육 함유",
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
