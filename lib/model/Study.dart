import 'package:cracker_book_flutter/model/Profile.dart';
import 'package:cracker_book_flutter/model/StudyType.dart';

class Study {
  String title;
  String capacity;
  int like;
  DateTime studyStartDate;
  DateTime studyEndDate;
  DateTime recruitStartAt;
  DateTime recruitEndAt;
  Profile profile;
  StudyType studyType;

  Study(
      this.title,
      this.capacity,
      this.like,
      this.studyStartDate,
      this.studyEndDate,
      this.recruitStartAt,
      this.recruitEndAt,
      this.profile,
      this.studyType);
}
