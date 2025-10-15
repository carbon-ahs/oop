import 'package:school_management_system/department.dart';
import 'package:school_management_system/school_management_system.dart'
    as school_management_system;
import 'package:school_management_system/student.dart';

void main(List<String> arguments) {
  school_management_system.run();

  Student student1 = Student(
    id: "s01",
    name: "student A",
    admissionDate: DateTime.now().subtract(const Duration(days: 100)),
  );

  Student student2 = Student(
    id: "s02",
    name: "student B",
    admissionDate: DateTime.now().subtract(const Duration(days: 50)),
  );

  Department department1 = Department("Department A", "HOD A");

  // department1.students.add(student1);
}
