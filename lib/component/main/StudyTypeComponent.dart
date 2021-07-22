import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:cracker_book_flutter/model/StudyType.dart';

class StudyTypeComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 6, right: 6, top: 10, bottom: 10),
        height: 100,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: studyTypeList.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                    height: 52,
                    width: 52,
                    margin: EdgeInsets.only(
                        left: 14, right: 14, top: 20, bottom: 5),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 0,
                            blurRadius: 20,
                            offset: Offset(5, 5)),
                      ],
                    ),
                    child: SvgPicture.asset('${studyTypeList[index].src}'),
                  ),
                  Center(
                    child: Text(studyTypeList[index].title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal)),
                  )
                ],
              );
            }));
  }
}
