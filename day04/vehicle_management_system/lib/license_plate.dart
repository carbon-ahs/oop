/*
  License Plate Class
  Represents a vehicle's license plate information.
Each car must be assigned a unique license plate 
that includes attributes like the plate number, registration date, and expiration date. 

*/

class LicensePlate {
  String plateNumber;
  DateTime registrationDate;
  DateTime expirationDate;
  bool isAssigned = false;

  LicensePlate({
    required this.plateNumber,
    required this.registrationDate,
    required this.expirationDate,
  });

  bool get isValid {
    final currentDate = DateTime.now();
    return currentDate.isBefore(expirationDate);
  }
}
