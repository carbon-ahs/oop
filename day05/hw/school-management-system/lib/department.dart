/*
The system should track department details 
such as the department name, 
head of the department, 
maximum student capacity, 
and the list of admitted students. 

*/

import 'package:school_management_system/student.dart';

class Department {
  String name;
  String headOfDepartment;
  List<Student> _students = [];
  static final int _maxNumberOfStudents = 2;

  Department(this.name, this.headOfDepartment);

  void addStudent(Student student) {
    if (_students.length < _maxNumberOfStudents) {
      _students.add(student);
    } else {
      throw Exception(
        'Maximum number of students $_maxNumberOfStudents reached.',
      );
    }
  }

  List<Student> get students => List<Student>.from(_students);

  @override
  String toString() {
    return 'Department{name: $name, \theadOfDepartment: $headOfDepartment, \tstudents: $students}';
  }
}
