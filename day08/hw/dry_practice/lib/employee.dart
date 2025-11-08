class Employee {
  static const double standardHours = 40;
  static const double overtimeMultiplier = 1.5;
  String name;
  double hourlyRate;
  double hoursWorked;

  Employee(this.name, this.hourlyRate, this.hoursWorked);

  double calculateWeeklySalary() {
    double totalPay = _calculateRegularPay() + _calculateOvertimePay();
    return totalPay;
  }

  double _calculateRegularPay() {
    if (hoursWorked > standardHours) {
      return standardHours * hourlyRate;
    } else {
      return hoursWorked * hourlyRate;
    }
  }

  double _calculateOvertimePay() {
    double overtimeHours = hoursWorked - standardHours;

    if (overtimeHours <= 0) return 0;

    return overtimeHours * hourlyRate * overtimeMultiplier;
  }
}
