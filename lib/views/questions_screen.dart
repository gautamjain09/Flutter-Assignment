import 'package:flutter/material.dart';
import 'package:melooha_flutter_assignment/core/colors.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryDarkColor,
      body: const Center(
        child: Text("Questions Screen"),
      ),
    );
  }
}
