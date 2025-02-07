import 'package:flutter/material.dart';
import '../../data/repositories/expense_repository.dart';

class ExpenseProvider with ChangeNotifier {
  final ExpenseRepository _repository = ExpenseRepository();

  List<Expense> get expenses => _repository.expenses;

  void addExpense(Expense expense) {
    _repository.addExpense(expense);
    notifyListeners();
  }

  void removeExpense(String id) {
    _repository.removeExpense(id);
    notifyListeners();
  }
}