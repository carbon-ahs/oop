import 'employee.dart';

class OldPayroll {
  void printWeeklySalary(Employee employee) {
    if (employee.hoursWorked > 40) {
      double overtimeHours = employee.hoursWorked - 40;
      double weeklySalary =
          (40 * employee.hourlyRate) +
          (overtimeHours * employee.hourlyRate * 1.5);
      print(
        "${employee.name}'s Weekly Salary: \$${weeklySalary.toStringAsFixed(2)}",
      );
    } else {
      double weeklySalary = employee.hoursWorked * employee.hourlyRate;
      print(
        "${employee.name}'s Weekly Salary: \$${weeklySalary.toStringAsFixed(2)}",
      );
    }
  }
}
