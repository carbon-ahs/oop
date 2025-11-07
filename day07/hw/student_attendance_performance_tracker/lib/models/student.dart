import 'base_person.dart';
import 'course.dart';

class Student extends BasePerson {
  final int studentId;
  Map<Course, StudentCourseData> courseData = {};

  Student(this.studentId, String name) : super(name);

  void enroll(Course course) {
    if (!courseData.containsKey(course)) {
      courseData[course] = StudentCourseData();
    }
  }

  void viewIndividualReport() {
    print('\n--- Student Report for $name (ID: $studentId) ---');
    courseData.forEach((course, data) {
      print('  Course: ${course.name}');

      // Attendance Rate Calculation
      int presentDays = data.attendanceRecords.where((r) => r.isPresent).length;
      int totalDays = data.attendanceRecords.length;
      double attendanceRate = totalDays == 0
          ? 0
          : (presentDays / totalDays) * 100;
      print(
        '    Attendance Rate: ${attendanceRate.toStringAsFixed(2)}% ($presentDays/$totalDays days)',
      );

      // Average Score Calculation
      double totalScore = data.testScores.fold(
        0,
        (sum, test) => sum + test.score,
      );
      double averageScore = data.testScores.isEmpty
          ? 0
          : totalScore / data.testScores.length;

      print('    Overall Average Score: ${averageScore.toStringAsFixed(2)}');

      // Individual Test Marks
      print('    Test Marks:');
      for (var test in data.testScores) {
        print('      - ${test.topic}: ${test.score}/${test.fullMark}');
      }
    });
  }
}

/// Helper class to encapsulate a student's data per course
class StudentCourseData {
  List<AttendanceRecord> attendanceRecords = [];
  List<TestResult> testScores = [];

  StudentCourseData();
}

class AttendanceRecord {
  DateTime date;
  String topic;
  bool isPresent;

  AttendanceRecord(this.date, this.topic, this.isPresent);
}

class TestResult {
  String topic;
  double score;
  double fullMark;

  TestResult(this.topic, this.score, this.fullMark);
}
