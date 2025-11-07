// In today's digital commerce,
//customers use various payment methods to complete transactions.
//A well-designed payment processing system should handle different
//payment methods such as Credit Card,
//bKash, PayPal, and Bank Transfer,
//ensuring scalability to integrate future payment methods seamlessly.

// Your task is to design a system that adheres to the Dependency Inversion Principle (DIP),
//allowing the high-level PaymentService module to
//remain independent of specific payment method implementations.

import 'package:payment_prosessing_system/bank.dart';
import 'package:payment_prosessing_system/bikas.dart';
import 'package:payment_prosessing_system/payment_portal.dart';

void run() {
  print('Hello world: ');

  Bank bank = Bank();
  PaymentPortal paymentPortal = PaymentPortal(bank);
  paymentPortal.processPaymentFromPortal(1500.00);

  Bikas bikas = Bikas();
  paymentPortal = PaymentPortal(bikas);
  paymentPortal.processPaymentFromPortal(2500.00);
}
