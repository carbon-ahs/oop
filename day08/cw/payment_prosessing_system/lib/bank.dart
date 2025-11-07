import 'financial_entity.dart';

class Bank implements FinancialEntity {
  @override
  void processPayment(double amount) {
    // Implementation for processing payment through Bank Transfer
    print(
      'Processing Bank Transfer payment of amount: \$${amount.toStringAsFixed(2)}',
    );
  }
}
