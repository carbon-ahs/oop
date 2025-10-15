import 'package:vehicle_management_system/license_plate.dart';
import 'package:vehicle_management_system/vehicle.dart';
import 'package:vehicle_management_system/vehicle_management_system.dart'
    as program;
// import 'package:vehicle_management_system/vehicle_management_system.dart' as vehicle_management_system;

void main(List<String> arguments) {
  print('Hello world: ${program.calculate()}!');
  LicensePlate licensePlate = LicensePlate(
    plateNumber: "ABC123",
    registrationDate: DateTime(2022, 1, 1),
    expirationDate: DateTime(2024, 1, 1),
  );
  Vehicle vehicle = Vehicle(
    ownerName: "John Doe",
    manufacturer: "Toyota",
    model: "Camry",
    yearOfManufacture: 2010,
    licensePlate: licensePlate,
  );
  vehicle.displayInfo();
  print("ghf${vehicle.isLicensePlateValid}");
  // vehicle.isLicensePlateValid();
  vehicle.displayInfo();
}
