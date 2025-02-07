import '../../data/models/expense_model.dart';

class SplitExpense {
  static Map<String, double> splitEqually(Expense expense) {
    final double amountPerPerson = expense.amount / expense.splitBetween.length;
    final Map<String, double> splits = {};

    for (var user in expense.splitBetween) {
      splits[user] = amountPerPerson;
    }

    return splits;
  }
}