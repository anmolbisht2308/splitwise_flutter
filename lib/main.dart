import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'presentation/state/expense_provider.dart';
import 'app.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ExpenseProvider(),
      child: const MyApp(),
    ),
  );
}