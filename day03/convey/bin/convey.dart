import 'package:convey/convey.dart' as convey;

/*
"A car rental company manages a fleet of vehicles available for rent. 
Customers can rent a car for a specific period, 
and each car's availability must be tracked. 
The system needs to handle different types of cars, 
their rental rates, and maintenance schedules."
*/
// TODO: handle exceptions
class Vehicle {
  final String vehicleID;
  final String customerID;
  final String vehicleType;
  final DateTime startDate;
  DateTime bookingEndDate;
  DateTime? actualEndDate;
  bool isAvailable;
  bool isBooked;
  final double rentalRate;

  Vehicle({
    required this.vehicleID,
    required this.customerID,
    this.vehicleType = "Sedan",
    required this.startDate,
    required this.bookingEndDate,
    this.isAvailable = true,
    this.isBooked = false,
    required this.rentalRate,
  });

  void returnVehicle() {
    if (isAvailable == true && isBooked == false) {
      isAvailable = false;
      isBooked = true;
      return;
    }
  }

  void sendToMaintains() {
    isAvailable = false;
  }

  void returnFromMaintains() {
    isAvailable = true;
  }

  void rent() {
    isAvailable = false;
    isBooked = true;
  }

  @override
  String toString() {
    return "Vehicle ID: $vehicleID\nVehicle Type: $vehicleType\nRental Rate: $rentalRate\n";
  }
}

void main(List<String> arguments) {
  print('Hello world:');

  Vehicle car = Vehicle(
    vehicleID: "V001",
    customerID: "C001",
    startDate: DateTime.now(),
    bookingEndDate: DateTime.now().add(const Duration(days: 3)),
    rentalRate: 50.0,
  );

  car.rent();

  car.returnVehicle();
  car.sendToMaintains();
  car.returnFromMaintains();
}
