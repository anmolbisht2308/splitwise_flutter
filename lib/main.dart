import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app.dart'; // Import the app.dart file
import 'presentation/state/expense_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ExpenseProvider(),
      child: const MyApp(), // Use MyApp from app.dart
    ),
  );
}
