
import 'models/course.dart';
import 'models/school.dart';
import 'models/student.dart';
import 'models/teacher.dart';

void run() {
  // Setup the School
  var centralHigh = School('Central High School', 'City Center');
  
  // Create Teachers and Students
  var mrSmith = Teacher(101, 'Mr. Smith');
  var s1 = Student(1, 'Alice Johnson');
  var s2 = Student(2, 'Bob Williams');
  var s3 = Student(3, 'Charlie Brown');
  
  centralHigh.addTeacher(mrSmith);
  centralHigh.addStudent(s1);
  centralHigh.addStudent(s2);
  centralHigh.addStudent(s3);

  // Create a Course and Enroll Students
  var mathCourse = Course('M101', 'Mathematics', mrSmith);
  centralHigh.addCourse(mathCourse);
  
  s1.enroll(mathCourse);
  s2.enroll(mathCourse);
  s3.enroll(mathCourse);

  // --- Day 1: Algebra Class ---
  var day1 = DateTime(2025, 10, 1);
  var session1 = ClassSession(mathCourse, day1, 'Algebra Basics');

  // Teacher marks attendance (Bob is absent)
  // mrSmith.markAttendance(session1, {
  //   s1: true, // Alice is Present
  //   s2: false, // Bob is Absent
  //   s3: true, // Charlie is Present
  // });
  mrSmith.

  // Teacher records performance (Small Test/Assignment)
  mrSmith.recordPerformance(session1, TestResult(s1, 'Algebra Basics', 9, 10)); // Alice: 9/10
  mrSmith.recordPerformance(session1, TestResult(s3, 'Algebra Basics', 4, 10)); // Charlie: 4/10

  // Teacher views daily report
  mrSmith.viewDailySummaryReport(session1, centralHigh.students);

  // --- Day 2: Geometry Class ---
  var day2 = DateTime(2025, 10, 2);
  var session2 = ClassSession(mathCourse, day2, 'Geometry Shapes');

  // Teacher marks attendance (Everyone is present)
  mrSmith.markAttendance(session2, {
    s1: true,
    s2: true,
    s3: true,
  });

  // Teacher records performance
  mrSmith.recordPerformance(session2, TestResult(s1, 'Geometry Shapes', 7, 10)); // Alice: 7/10
  mrSmith.recordPerformance(session2, TestResult(s2, 'Geometry Shapes', 8, 10)); // Bob: 8/10
  mrSmith.recordPerformance(session2, TestResult(s3, 'Geometry Shapes', 9, 10)); // Charlie: 9/10

  // Teacher views daily report
  mrSmith.viewDailySummaryReport(session2, centralHigh.students);

  // --- End of Month Report Generation ---
  centralHigh.generateMonthlyReports();
}