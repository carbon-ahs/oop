class Student {
  String id;
  String name;
  DateTime admissionDate;

  Student({required this.id, required this.name, required this.admissionDate});

  @override
  String toString() {
    return 'Student{id: $id, name: $name, admissionDate: $admissionDate}';
  }
}
