import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state/expense_provider.dart';

class ExpenseListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final expenses = Provider.of<ExpenseProvider>(context).expenses;

    return Scaffold(
      appBar: AppBar(title: const Text('Expenses')),
      body: ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (context, index) {
          final expense = expenses[index];
          return ListTile(
            title: Text(expense.title),
            subtitle: Text('Amount: \$${expense.amount}'),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () => Provider.of<ExpenseProvider>(context, listen: false).removeExpense(expense.id),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AddExpenseScreen())),
        child: const Icon(Icons.add),
      ),
    );
  }
}