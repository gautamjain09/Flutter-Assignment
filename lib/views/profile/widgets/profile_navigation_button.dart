import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:melooha_flutter_assignment/core/colors.dart';
import 'package:melooha_flutter_assignment/core/fonts.dart';
import 'package:melooha_flutter_assignment/core/sizes.dart';

class ProfileNavigationButton extends StatelessWidget {
  final VoidCallback onTap;
  final String icon;
  final String text;
  const ProfileNavigationButton({
    super.key,
    required this.onTap,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: const EdgeInsets.all(AppSizes.paddingLarge),
      decoration: BoxDecoration(
        color: AppColors.blue900,
        borderRadius: BorderRadius.circular(11),
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(icon),
                const SizedBox(width: 12),
                Text(
                  text,
                  style: TextStyle(
                      fontFamily: AppFonts.primaryFont,
                      fontSize: 16,
                      color: AppColors.white,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColors.dark300,
            ),
          ],
        ),
      ),
    );
  }
}
