import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('타이틀'),
        backgroundColor: Colors.black87,
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.view_list_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ), // gridview가 어떤 모양을 가질지 결정
            itemBuilder: (context, index) {
              return Container(
                color: Colors.red,
              );
            },
            itemCount: 20,
          ),
        ),
      ),
    );
  }
}
