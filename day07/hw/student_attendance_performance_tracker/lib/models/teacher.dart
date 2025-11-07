import 'base_person.dart';
import 'course.dart';
import 'student.dart';

class Teacher extends BasePerson {
  final int teacherId;

  Teacher(this.teacherId, String name) : super(name);

  void markStudentAttendance(
    ClassSession session,
    Student student,
    bool isPresent,
  ) {
    student.courseData[session.course]!.attendanceRecords.add(
      AttendanceRecord(session.date, session.topic, isPresent),
    );
  }

  void recordPerformance(
    ClassSession session,
    Student student,
    TestResult result,
  ) {
    student.courseData[session.course]!.testScores.add(result);
  }
  // The core function for teachers: marking attendance for a class
  // void markAttendance(ClassSession session, Map<Student, bool> attendanceStatus) {
  //   print('\n${name} is marking attendance for ${session.course.name} on ${session.date.toIso8601String().split('T').first}.');
  //   for (var entry in attendanceStatus.entries) {
  //     entry.key.courseData[session.course]!.attendanceRecords.add(
  //       AttendanceRecord(session.date, session.topic, entry.value)
  //     );
  //   }
  // }

  // The core function for teachers: recording performance
  // void recordPerformance(ClassSession session, TestResult result) {
  //   print(
  //     '${name} is recording test results for ${session.course.name} - Topic: ${result.topic}.',
  //   );
  //   result.student.courseData[session.course]!.testScores.add(result);
  // }

  // Teacher report function
  void viewDailySummaryReport(
    ClassSession session,
    List<Student> enrolledStudents,
  ) {
    print(
      '\n--- Daily Summary for ${session.course.name} (${session.topic}) on ${session.date.toIso8601String().split('T').first} ---',
    );

    // 1. Check for absence
    List<String> absentStudents = [];
    for (var student in enrolledStudents) {
      // Check the latest attendance record for the day
      var record = student.courseData[session.course]?.attendanceRecords
          .firstWhere(
            (r) => r.date.isAtSameMomentAs(session.date),
            orElse: () => AttendanceRecord(session.date, '', false),
          );
      if (record != null && record.isPresent == false) {
        absentStudents.add(student.name);
      }
    }
    print(
      '  Absent Students: ${absentStudents.isEmpty ? 'None' : absentStudents.join(', ')}',
    );

    // 2. Performance Analysis (Assuming a test was conducted on this day for simplicity)
    List<TestResult> todayResults = [];
    for (var student in enrolledStudents) {
      var result = student.courseData[session.course]?.testScores.firstWhere(
        (r) => r.topic == session.topic,
        orElse: () => TestResult('', 0, 0),
      );
      if (result != null && result.score > 0) {
        todayResults.add(result);
      }
    }

    if (todayResults.isNotEmpty) {
      todayResults.sort(
        (a, b) => b.score.compareTo(a.score),
      ); // Sort by score descending
      double averageScore =
          todayResults.map((r) => r.score).reduce((a, b) => a + b) /
          todayResults.length;
      print(
        '  Average Score for ${session.topic}: ${averageScore.toStringAsFixed(2)}',
      );

      // Simple low score check (e.g., less than 50% of the maximum score)
      var lowScores = todayResults
          .where((r) => r.score < (r.fullMark * 0.5))
          .map((r) => r.topic)
          .toList();
      print(
        '  Scored Low: ${lowScores.isEmpty ? 'None' : lowScores.join(', ')}',
      );
    }
  }
}
