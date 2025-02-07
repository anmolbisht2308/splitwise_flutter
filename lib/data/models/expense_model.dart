import 'package:uuid/uuid.dart';

class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final String paidBy; // User ID who paid
  final List<String> splitBetween; // List of user IDs

  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.paidBy,
    required this.splitBetween,
  }) : id = const Uuid().v4();
}