import 'package:flutter/material.dart';
import 'package:melooha_flutter_assignment/core/assets.dart';
import 'package:melooha_flutter_assignment/core/colors.dart';
import 'package:melooha_flutter_assignment/core/fonts.dart';
import 'package:melooha_flutter_assignment/core/sizes.dart';
import 'package:melooha_flutter_assignment/core/utils.dart';
import 'package:melooha_flutter_assignment/models/dummy_models.dart';
import 'package:melooha_flutter_assignment/views/profile/account_summary_screen.dart';
import 'package:melooha_flutter_assignment/views/profile/feedback_screen.dart';
import 'package:melooha_flutter_assignment/views/profile/legals_screen.dart';
import 'package:melooha_flutter_assignment/views/profile/notifications_settings_screen.dart';
import 'package:melooha_flutter_assignment/views/profile/profile_settings_screen.dart';
import 'package:melooha_flutter_assignment/views/profile/refer_and_earn_sceeen.dart';
import 'package:melooha_flutter_assignment/views/profile/widgets/profile_navigation_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryDarkColor,
      appBar: AppBar(
        title: Text(
          "My Profile",
          style: TextStyle(
            fontFamily: AppFonts.primaryFont,
            color: AppColors.dark100,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        elevation: 0,
        backgroundColor: AppColors.blue900,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(AppSizes.paddingLarge),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileNavigationButton(
                onTap: () {
                  pushScreenNavigation(
                    widget:
                        ProfileSettingsScreen(userModel: DummyModels.userModel),
                    context: context,
                  );
                },
                icon: AppAssets.profileSettingsIcon,
                text: "Profile Settings",
              ),
              const SizedBox(height: 12),
              ProfileNavigationButton(
                onTap: () {
                  pushScreenNavigation(
                    widget: const ReferAndEarnScreen(),
                    context: context,
                  );
                },
                icon: AppAssets.referEarnIcon,
                text: "Refer & Earn",
              ),
              const SizedBox(height: 12),
              ProfileNavigationButton(
                onTap: () {},
                icon: AppAssets.betaMemberIcon,
                text: "Beta Member",
              ),
              const SizedBox(height: 12),
              ProfileNavigationButton(
                onTap: () {
                  pushScreenNavigation(
                    widget: const AccountSummaryScreen(),
                    context: context,
                  );
                },
                icon: AppAssets.accountSummaryIcon,
                text: "Account Summary",
              ),
              const SizedBox(height: 12),
              ProfileNavigationButton(
                onTap: () {
                  pushScreenNavigation(
                    widget: const NotificationsSettingsScreen(),
                    context: context,
                  );
                },
                icon: AppAssets.notificationIcon,
                text: "Notification Settings",
              ),
              const SizedBox(height: 12),
              ProfileNavigationButton(
                onTap: () {
                  pushScreenNavigation(
                    widget: const FeedbackScreen(),
                    context: context,
                  );
                },
                icon: AppAssets.feedbackIcon,
                text: "Feedback",
              ),
              const SizedBox(height: 12),
              ProfileNavigationButton(
                onTap: () {
                  pushScreenNavigation(
                    widget: const LegalsScreen(),
                    context: context,
                  );
                },
                icon: AppAssets.legalIcon,
                text: "Legal",
              ),
              const SizedBox(height: 12),
              ProfileNavigationButton(
                onTap: () {},
                icon: AppAssets.shareAppIcon,
                text: "Share Melooha",
              ),
              const SizedBox(height: 12),
              ProfileNavigationButton(
                onTap: () {},
                icon: AppAssets.ratingIcon,
                text: "Rate Melooha",
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
