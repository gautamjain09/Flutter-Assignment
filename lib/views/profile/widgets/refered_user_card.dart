import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:melooha_flutter_assignment/core/colors.dart';
import 'package:melooha_flutter_assignment/core/constants.dart';
import 'package:melooha_flutter_assignment/core/fonts.dart';
import 'package:melooha_flutter_assignment/models/user_model.dart';

class ReferedUserCard extends StatelessWidget {
  final UserModel model;
  const ReferedUserCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(AppConstants.dummyProfileImage),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    model.name,
                    style: TextStyle(
                      fontFamily: AppFonts.primaryFont,
                      color: AppColors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    model.phoneNumber,
                    style: TextStyle(
                      fontFamily: AppFonts.primaryFont,
                      color: AppColors.blue300,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Joined on",
                style: TextStyle(
                  fontFamily: AppFonts.primaryFont,
                  color: AppColors.blue300,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                model.joiningTime,
                style: TextStyle(
                  fontFamily: AppFonts.primaryFont,
                  color: AppColors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
