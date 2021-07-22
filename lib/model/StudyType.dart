class StudyType {
  String title;
  String src;

  StudyType(this.title, this.src);
}

final studyTypeList = [
  StudyType('토론', 'assets/main/chats.svg'),
  StudyType('발표', 'assets/main/microphone.svg'),
  StudyType('글쓰기', 'assets/main/note.svg'),
  StudyType('포트폴리오', 'assets/main/desktop.svg'),
  StudyType('기타', 'assets/main/etc.svg'),
];