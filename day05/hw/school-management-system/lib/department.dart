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
  int capacity = 200;
  List<Student> students = [];

  Department(this.name, this.headOfDepartment);
}
