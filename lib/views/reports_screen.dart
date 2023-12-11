import 'package:flutter/material.dart';
import 'package:melooha_flutter_assignment/core/colors.dart';

class ReportsScreen extends StatefulWidget {
  const ReportsScreen({super.key});

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryDarkColor,
      body: const Center(
        child: Text("Reports Screen"),
      ),
    );
  }
}
