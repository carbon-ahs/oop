/*
  A vehicle class to represent a generic vehicle.
  The vehicle registration authority
requires a system to 
manage car details
and their associated 
license plates. 


The system must 
validate the license plate by ensuring it is current and not expired. 

Additionally, the system should track the car’s owner information, manufacturer, model, and year of manufacture. 

It must also calculate the age (twenty years or less) of the car to determine if it qualifies for registration renewal .

*/

import 'license_plate.dart';

class Vehicle {
  String ownerName;
  String manufacturer;
  String model;
  int yearOfManufacture;
  LicensePlate licensePlate;

  Vehicle({
    required this.ownerName,
    required this.manufacturer,
    required this.model,
    required this.yearOfManufacture,
    required this.licensePlate,
  });

  int get vehicleAge {
    final currentYear = DateTime.now().year;
    return currentYear - yearOfManufacture;
  }

  bool get isEligibleForRenewal {
    // 
    return vehicleAge <= 20 && licensePlate.isValid;
  }

  void renewRegistration(DateTime newExpirationDate) {
// for caller
  }

  bool get isLicensePlateValid {
    return licensePlate.isValid;
  }

  void displayInfo() {
    print('Owner: $ownerName');
    print('Manufacturer: $manufacturer');
    print('Model: $model');
    print('Year: $yearOfManufacture');
    print('License Plate: ${licensePlate.plateNumber}');
    print('Registration Date: ${licensePlate.registrationDate}');
    print('Expiration Date: ${licensePlate.expirationDate}');
    print('Vehicle Age: $vehicleAge');
    print('Eligible for Renewal: $isEligibleForRenewal');
  }

  @override
  String toString() {
    return 'Owner: $ownerName, Manufacturer: $manufacturer, Model: $model, Year: $yearOfManufacture, License Plate: ${licensePlate.plateNumber}, Registration Date: ${licensePlate.registrationDate}, Expiration Date: ${licensePlate.expirationDate}, Vehicle Age: $vehicleAge, Eligible for Renewal: $isEligibleForRenewal';
  }
}
