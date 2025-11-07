import 'package:payment_prosessing_system/financial_entity.dart';

class Bikas implements FinancialEntity {
  @override
  void processPayment(double amount) {
    print('Processing Bikas payment of amount: \$${amount.toStringAsFixed(2)}');
  }
}
