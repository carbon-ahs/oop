// Brand, Model and Year of Manufacture

abstract class Vehicle {
  String brand;
  String model;
  int yearOfManufacture;
  abstract double rentalRatePerDay;
  abstract int rentDurationDays;
  Vehicle(this.brand, this.model, this.yearOfManufacture);

  void rent();
}
