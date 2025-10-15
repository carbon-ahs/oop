import 'package:hospital_management_system/doctor.dart';

enum Condition { mild, emergency }

class Patient {
  String name;
  int age;
  Condition condition;
  Doctor primaryDoctor;

  Patient(this.name, this.age, this.condition, this.primaryDoctor);

  void performAction() {
    // 2. Accessing the Nested Enum within the class
    switch (condition) {
      case Condition.mild:
        // logic for mild condition
        break;
      default:
        // logic for default case
        break;
    }
  }
}
