import 'package:flutter/material.dart';
import 'package:melooha_flutter_assignment/core/colors.dart';
import 'package:melooha_flutter_assignment/core/fonts.dart';
import 'package:melooha_flutter_assignment/core/utils.dart';
import 'package:melooha_flutter_assignment/views/profile/feedback_screen.dart';

class SubmitFeedbackScreen extends StatefulWidget {
  const SubmitFeedbackScreen({super.key});

  @override
  State<SubmitFeedbackScreen> createState() => _SubmitFeedbackScreenState();
}

class _SubmitFeedbackScreenState extends State<SubmitFeedbackScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () async {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) {
            return const FeedbackScreen();
          },
        ),
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.blue900,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 30,
                    color: AppColors.blue400,
                    spreadRadius: 5,
                  )
                ],
              ),
              child: const CircleAvatar(
                radius: 48,
                backgroundColor: AppColors.pink600,
                child: Icon(Icons.check, size: 28, color: AppColors.white),
              ),
            ),
            const SizedBox(height: 36),
            Text(
              "Thanks for your feedback",
              style: TextStyle(
                fontFamily: AppFonts.primaryFont,
                color: AppColors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "Gautam Jain!",
              style: TextStyle(
                fontFamily: AppFonts.primaryFont,
                color: AppColors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
