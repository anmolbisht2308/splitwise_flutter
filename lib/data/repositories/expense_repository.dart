import '../models/expense_model.dart';

class ExpenseRepository {
  final List<Expense> _expenses = [];

  List<Expense> get expenses => _expenses;

  void addExpense(Expense expense) {
    _expenses.add(expense);
  }

  void removeExpense(String id) {
    _expenses.removeWhere((expense) => expense.id == id);
  }
}