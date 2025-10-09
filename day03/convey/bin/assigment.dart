/* 
  A school system allows 
    - `teachers to `create, `assign homework for their `students. - 
  
  Each homework `assignment includes 
    - `a due date, 
    - `a list of tasks, 
    - `and any necessary resources like reading materials. 
  The system tracks 
    - which `students have submitted their homework 
    - and allows `teachers to grade them.

*/

class Assignment {
  String id; // assignment ID a01
  DateTime dueDate;
  List<String> tasks; // list of tasks t01, t02 etc
  List<String>? resources; // list of resources res1, res2 etc
  List<Map<String, String>> status = []; // s1 ={'s01' 'PENDING'}
  List<String> assignedStudentsList = []; // list of student IDs s01, s02 etc
  List<String> submittedStudentsList = []; // list of student IDs
  Map<String, String?>? studentGrades = {}; // studentID -> grade A, B, C etc
  String teacherID; // or List<String>? teachersID;

  Assignment({
    required this.id,
    required this.dueDate,
    required this.tasks,
    this.resources,
    this.status = 'PENDING',
    required this.teacherID,
  });

  void assignHomework(String studentID) {
    if (!assignedStudentsList.contains(studentID) &&
        !submittedStudentsList.contains(studentID)) {
      assignedStudentsList.add(studentID);
    } else {
      throw ArgumentError(
        'Student ID $studentID is already assigned to this list.',
      );
    }
  }

  void submitHomework(String studentID) {
    if (assignedStudentsList.contains(studentID) &&
        !submittedStudentsList.contains(studentID)) {
      submittedStudentsList.add(studentID);
      if (assignedStudentsList.isEmpty) {
        status = 'SUBMITTED';
      }
    } else {
      throw ArgumentError(
        'Student ID $studentID is not assigned or already submitted.',
      );
    }
  }
}
