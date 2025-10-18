import 'package:vehicle_renter/vehicle.dart';

class Car extends Vehicle {
  @override
  double rentalRatePerDay = 50.0;

  @override
  int rentDurationDays;

  Car(super.brand, super.model, super.yearOfManufacture, this.rentDurationDays);

  @override
  void rent() {
    // Cars: If a car is older than 5 years, a 10% discount is applied to the base rental price.
    int currentYear = DateTime.now().year;
    double finalRate = rentalRatePerDay;
    if (currentYear - yearOfManufacture > 5) {
      finalRate *= 0.9; // Apply 10% discount
    }
    
  }
}
