import 'package:flutter/material.dart';
import 'package:melooha_flutter_assignment/core/colors.dart';
import 'package:melooha_flutter_assignment/core/fonts.dart';
import 'package:melooha_flutter_assignment/core/sizes.dart';
import 'package:melooha_flutter_assignment/models/feedback_model.dart';

class FeedbackCard extends StatelessWidget {
  final FeedbackModel feedbackModel;
  const FeedbackCard({
    super.key,
    required this.feedbackModel,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      padding: const EdgeInsets.all(AppSizes.paddingLarge),
      decoration: BoxDecoration(
        color: AppColors.blue700,
        borderRadius: BorderRadius.circular(AppSizes.cornerRadiusSizeFour),
      ),
      child: Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              feedbackModel.text,
              style: TextStyle(
                fontFamily: AppFonts.primaryFont,
                color: AppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Thank you for your feedback.",
              style: TextStyle(
                fontFamily: AppFonts.primaryFont,
                color: AppColors.blue300,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              feedbackModel.createdTime,
              style: TextStyle(
                fontFamily: AppFonts.primaryFont,
                color: AppColors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
