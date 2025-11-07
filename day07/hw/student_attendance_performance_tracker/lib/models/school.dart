import 'package:student_attendance_performance_tracker/models/base_institute.dart';

import 'course.dart';
import 'student.dart';
import 'teacher.dart';

class School extends BaseInstitute {
  List<Course> courses = [];
  List<Student> students = [];
  List<Teacher> teachers = [];

  School(String name, String location) : super(name, location);

  @override
  void displayInfo() {
    // TODO: implement displayInfo
  }

  void addCourse(Course course) => courses.add(course);
  void addStudent(Student student) => students.add(student);
  void addTeacher(Teacher teacher) => teachers.add(teacher);

  void generateMonthlyReports() {
    print('\n--- ${name} Monthly Report Generation ---');
    for (var student in students) {
      student.viewIndividualReport();
    }
  }
}
