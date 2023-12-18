import 'package:flutter/material.dart';
import 'package:melooha_flutter_assignment/core/colors.dart';
import 'package:melooha_flutter_assignment/core/fonts.dart';
import 'package:melooha_flutter_assignment/core/sizes.dart';

class NotificationsSettingsScreen extends StatefulWidget {
  const NotificationsSettingsScreen({super.key});

  @override
  State<NotificationsSettingsScreen> createState() =>
      _NotificationsSettingsScreenState();
}

class _NotificationsSettingsScreenState
    extends State<NotificationsSettingsScreen> {
  late bool allNotifications;
  late bool appPushNotifications;
  late bool smsNotifications;
  late bool emailNotifications;
  late bool dealsAndMoreNotifications;

  @override
  void initState() {
    super.initState();
    allNotifications = true;
    appPushNotifications = true;
    smsNotifications = true;
    emailNotifications = true;
    dealsAndMoreNotifications = true;
  }

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
          "Notification Settings",
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "All notifications ",
                          style: TextStyle(
                            fontFamily: AppFonts.primaryFont,
                            color: AppColors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "Get notified about your actives & our newly launched deals, offers and much more.",
                          maxLines: 5,
                          style: TextStyle(
                            fontFamily: AppFonts.primaryFont,
                            color: AppColors.blue300,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Switch(
                    activeTrackColor: Colors.green,
                    value: allNotifications,
                    onChanged: (value) {
                      setState(() {
                        allNotifications = value;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Divider(
                thickness: 1,
                color: AppColors.blue700,
              ),
              const SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "App push notifications ",
                          style: TextStyle(
                            fontFamily: AppFonts.primaryFont,
                            color: AppColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "Get notifications to keep a track of all the activities on your account.",
                          maxLines: 5,
                          style: TextStyle(
                            fontFamily: AppFonts.primaryFont,
                            color: AppColors.blue300,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Switch(
                    activeTrackColor: Colors.green,
                    value: appPushNotifications,
                    onChanged: (value) {
                      setState(() {
                        appPushNotifications = value;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "SMS notifications",
                          style: TextStyle(
                            fontFamily: AppFonts.primaryFont,
                            color: AppColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "Get notifications via sms for regular updates and activities on your account.",
                          maxLines: 5,
                          style: TextStyle(
                            fontFamily: AppFonts.primaryFont,
                            color: AppColors.blue300,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Switch(
                    activeTrackColor: Colors.green,
                    value: smsNotifications,
                    onChanged: (value) {
                      setState(() {
                        smsNotifications = value;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email Notification ",
                          style: TextStyle(
                            fontFamily: AppFonts.primaryFont,
                            color: AppColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "Get updates about your valuable notifications on your Email ID.",
                          maxLines: 5,
                          style: TextStyle(
                            fontFamily: AppFonts.primaryFont,
                            color: AppColors.blue300,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Switch(
                    activeTrackColor: Colors.green,
                    value: emailNotifications,
                    onChanged: (value) {
                      setState(() {
                        emailNotifications = value;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Deals and more ",
                          style: TextStyle(
                            fontFamily: AppFonts.primaryFont,
                            color: AppColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "Get notified about our latest deals and trending offers.",
                          maxLines: 5,
                          style: TextStyle(
                            fontFamily: AppFonts.primaryFont,
                            color: AppColors.blue300,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Switch(
                    activeTrackColor: Colors.green,
                    value: dealsAndMoreNotifications,
                    onChanged: (value) {
                      setState(() {
                        dealsAndMoreNotifications = value;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
