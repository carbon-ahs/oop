import 'package:vehicle_renter/vehicle.dart';

class Bike extends Vehicle {
  @override
  double rentalRatePerDay = 15.0;

  @override
  int rentDurationDays;

  Bike(super.brand, super.model, super.yearOfManufacture, this.rentDurationDays);

  @override
  void rent() {
    // Bikes: A 15% discount is applied to the total rental cost
    //if the rental period is more than 7 days.
  }
}
