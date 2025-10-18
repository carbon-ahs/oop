import 'package:vehicle_renter/vehicle.dart';

class Truck extends Vehicle {
  @override
  double rentalRatePerDay = 80.0;

  @override
  int rentDurationDays;

  Truck(super.brand, super.model, super.yearOfManufacture, this.rentDurationDays);

  @override
  void rent() {
    // TODO: implement rent
  }
}
