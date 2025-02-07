import '../../data/models/expense_model.dart';

class CalculateBalances {
  static Map<String, double> calculate(List<Expense> expenses) {
    final Map<String, double> balances = {};

    for (var expense in expenses) {
      final splits = SplitExpense.splitEqually(expense);
      for (var user in splits.keys) {
        balances[user] = (balances[user] ?? 0) - splits[user]!;
      }
      balances[expense.paidBy] = (balances[expense.paidBy] ?? 0) + expense.amount;
    }

    return balances;
  }
}