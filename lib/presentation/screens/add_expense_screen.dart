import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../data/models/expense_model.dart';
import '../state/expense_provider.dart';

class AddExpenseScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Expense')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(labelText: 'Title'),
                validator: (value) => value!.isEmpty ? 'Enter a title' : null,
              ),
              TextFormField(
                controller: _amountController,
                decoration: const InputDecoration(labelText: 'Amount'),
                keyboardType: TextInputType.number,
                validator: (value) => value!.isEmpty ? 'Enter an amount' : null,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    final expense = Expense(
                      title: _titleController.text,
                      amount: double.parse(_amountController.text),
                      date: DateTime.now(),
                      paidBy: 'User1', // Replace with actual user
                      splitBetween: ['User1', 'User2'], // Replace with actual users
                    );
                    Provider.of<ExpenseProvider>(context, listen: false).addExpense(expense);
                    Navigator.pop(context);
                  }
                },
                child: const Text('Add Expense'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}