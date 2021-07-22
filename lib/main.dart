import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'component/common/AppBarComponent.dart';
import 'component/main/StudyKindComponent.dart';
import 'model/Study.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Creaker Book',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(title: 'Creaker Book'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final studyList = [
    Study('눈치껏 못 배웁니다, 일센스...'),
    Study('생각의 쓰임'),
    Study('엘라스틱서치 실무 가이드...')
  ];

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
              StudyKindComponent(),
              Container(
                margin:
                    EdgeInsets.only(left: 20, right: 20, top: 22, bottom: 10),
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: studyList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      width: 270,
                                      child: Text(
                                        "'${studyList[index].title}'의",
                                        softWrap: true,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      width: 270,
                                      child: Text(
                                        "스터디",
                                        softWrap: true,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "전체보기 >",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff999999),
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, bottom: 20),
                            color: Colors.green,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 226,
                                  child: Text(
                                    'img area',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, bottom: 20),
                            child: Row(
                              children: <Widget>[
                                Column(
                                  children: [
                                    Container(
                                      width: 270,
                                      child: Text(
                                        "글쓰기 맴버 3/5",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff677AC7),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      width: 270,
                                      child: Text(
                                        "엘라스틱서치 시스템 실습",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      width: 270,
                                      child: Text(
                                        "2021.04.26 ~ 05.21 토 14:00",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, bottom: 20),
                            child: Row(
                              children: <Widget>[
                                Column(
                                  children: [
                                    Container(
                                      width: 270,
                                      child: Text(
                                        "글쓰기 맴버 3/5",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff677AC7),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      width: 270,
                                      child: Text(
                                        "사회초년생을 위한 직팁",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      width: 270,
                                      child: Text(
                                        "2021.04.26 ~ 05.21 토 14:00",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      );
                    }),
              ),
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
