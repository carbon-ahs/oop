import 'teacher.dart';

class Course {
  final String courseCode;
  String name;
  Teacher instructor;

  Course(this.courseCode, this.name, this.instructor);
}

class ClassSession {
  Course course;
  DateTime date;
  String topic;

  ClassSession(this.course, this.date, this.topic);
}