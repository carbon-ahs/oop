import 'package:payment_prosessing_system/financial_entity.dart';

class PaymentPortal {
  FinancialEntity paymentMethod;
  PaymentPortal(this.paymentMethod);
  void processPaymentFromPortal(double amount) {
    paymentMethod.processPayment(amount);
  }
}
