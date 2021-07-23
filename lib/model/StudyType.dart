class StudyType {
  String title;
  String src;

  StudyType(this.title, this.src);
}

final studyTypeList = [
  StudyType('토론', 'assets/main/studytype/chats.svg'),
  StudyType('발표', 'assets/main/studytype/microphone.svg'),
  StudyType('글쓰기', 'assets/main/studytype/note.svg'),
  StudyType('포트폴리오', 'assets/main/studytype/desktop.svg'),
  StudyType('기타', 'assets/main/studytype/etc.svg'),
];