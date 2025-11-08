import 'employee.dart';

class Payroll {
  void printWeeklySalary(Employee employee) {
    double weeklySalary = employee.calculateWeeklySalary();
    print(
      "${employee.name}'s Weekly Salary: \$${weeklySalary.toStringAsFixed(2)}",
    );
  }
}
