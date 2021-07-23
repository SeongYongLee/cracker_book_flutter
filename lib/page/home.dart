import 'package:flutter/material.dart';

import 'package:cracker_book_flutter/component/common/AppBarComponent.dart';
import 'package:cracker_book_flutter/component/main/StudyTypeComponent.dart';
import 'package:cracker_book_flutter/component/main/PopularStudyComponent.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              StudyTypeComponent(),
              PopularStudyComponent(),
              Container(
                margin:
                EdgeInsets.only(left: 20, right: 20, top: 22, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '좋아요가 많은 스터디',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                EdgeInsets.only(left: 20, right: 20, top: 22, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '새로 생긴 스터디',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                child: Text('더 보기'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
