import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:cracker_book_flutter/model/Book.dart';

class PopularStudyComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
      EdgeInsets.only(left: 20, right: 20, top: 22, bottom: 10),
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: bookList.length,
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
                              "'${bookList[index].title}'의",
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
    );
  }
}
