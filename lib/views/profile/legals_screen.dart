import 'package:flutter/material.dart';
import 'package:melooha_flutter_assignment/core/colors.dart';
import 'package:melooha_flutter_assignment/core/fonts.dart';
import 'package:melooha_flutter_assignment/core/sizes.dart';

class LegalsScreen extends StatefulWidget {
  const LegalsScreen({super.key});

  @override
  State<LegalsScreen> createState() => _LegalsScreenState();
}

class _LegalsScreenState extends State<LegalsScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.blue1000,
      appBar: AppBar(
        backgroundColor: AppColors.blue900,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            size: 16,
            color: AppColors.dark300,
          ),
        ),
        title: Text(
          "Legal",
          style: TextStyle(
            fontFamily: AppFonts.secondaryFont,
            color: AppColors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          padding: const EdgeInsets.all(AppSizes.paddingLarge),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Privacy Policy",
                    style: TextStyle(
                      fontFamily: AppFonts.primaryFont,
                      color: AppColors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppColors.white,
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Divider(
                thickness: 1,
                color: AppColors.blue700,
              ),
              const SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Terms & Conditions",
                    style: TextStyle(
                      fontFamily: AppFonts.primaryFont,
                      color: AppColors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppColors.white,
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Divider(
                thickness: 1,
                color: AppColors.blue700,
              ),
              const SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Refund Policy",
                    style: TextStyle(
                      fontFamily: AppFonts.primaryFont,
                      color: AppColors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppColors.white,
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Divider(
                thickness: 1,
                color: AppColors.blue700,
              ),
              const SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Disclaimer",
                    style: TextStyle(
                      fontFamily: AppFonts.primaryFont,
                      color: AppColors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppColors.white,
                  ),
                ],
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
