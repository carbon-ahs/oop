class Bank {
  String name;
  String address;
  List<String> services;
  

  Bank({
    required this.name,
    required this.address,
    required this.services,
  });

  void displayInfo() {
    print('Bank Name: $name');
    print('Address: $address');
    print('Services: ${services.join(', ')}');
  }
}