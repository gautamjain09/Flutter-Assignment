import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:melooha_flutter_assignment/core/assets.dart';
import 'package:melooha_flutter_assignment/core/colors.dart';
import 'package:melooha_flutter_assignment/core/constants.dart';
import 'package:melooha_flutter_assignment/core/fonts.dart';
import 'package:melooha_flutter_assignment/core/sizes.dart';
import 'package:melooha_flutter_assignment/core/utils.dart';
import 'package:melooha_flutter_assignment/models/user_model.dart';

class ProfileSettingsScreen extends StatefulWidget {
  final UserModel userModel;
  const ProfileSettingsScreen({
    super.key,
    required this.userModel,
  });

  @override
  State<ProfileSettingsScreen> createState() => _ProfileSettingsScreenState();
}

class _ProfileSettingsScreenState extends State<ProfileSettingsScreen> {
  late bool isProfilePrivate;

  @override
  void initState() {
    super.initState();
    isProfilePrivate = widget.userModel.privateProfile;
  }

  pickImageFunction() async {
    File? pickedImage = await pickImage();
    if (pickedImage != null) {
      debugPrint("Image Picked from Gallery");
    }
    setState(() {});
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
          "Profile Settings",
          style: TextStyle(
            fontFamily: AppFonts.secondaryFont,
            color: AppColors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: size.width,
                        height: 108,
                        color: AppColors.pink1000,
                      ),
                      Container(
                        width: size.width,
                        height: 72,
                        color: AppColors.blue1000,
                      ),
                      Center(
                        child: Text(
                          widget.userModel.name,
                          style: TextStyle(
                            fontFamily: AppFonts.primaryFont,
                            color: AppColors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          widget.userModel.phoneNumber,
                          style: TextStyle(
                            fontFamily: AppFonts.primaryFont,
                            color: AppColors.pink400,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      (widget.userModel.profileImage != "")
                          ? CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  NetworkImage(widget.userModel.profileImage),
                            )
                          : CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  NetworkImage(AppConstants.dummyProfileImage),
                            ),
                      GestureDetector(
                        onTap: () {
                          pickImageFunction();
                        },
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: AppColors.blue600,
                          child: SvgPicture.asset(AppAssets.editProfileIcon),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Container(
                width: size.width,
                padding: const EdgeInsets.all(AppSizes.paddingLarge),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width,
                      padding: const EdgeInsets.all(AppSizes.paddingLarge),
                      decoration: BoxDecoration(
                        color: AppColors.blue900,
                        borderRadius: BorderRadius.circular(
                          AppSizes.cornerRadiusSizeEight,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Make your profile private",
                                  style: TextStyle(
                                    fontFamily: AppFonts.primaryFont,
                                    color: AppColors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  "Your account is private and is not visible to melooha users",
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
                          Switch(
                            activeTrackColor: Colors.green,
                            value: isProfilePrivate,
                            onChanged: (value) {
                              setState(() {
                                isProfilePrivate = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "User details",
                          style: TextStyle(
                            fontFamily: AppFonts.primaryFont,
                            color: AppColors.blue300,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(AppAssets.editProfileIcon),
                            const SizedBox(width: 4),
                            Text(
                              "Edit",
                              style: TextStyle(
                                fontFamily: AppFonts.primaryFont,
                                color: AppColors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Container(
                      width: size.width,
                      padding: const EdgeInsets.all(AppSizes.paddingLarge),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppSizes.cornerRadiusSizeEight,
                        ),
                        color: AppColors.blue900,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name",
                            style: TextStyle(
                              fontFamily: AppFonts.primaryFont,
                              color: AppColors.blue300,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            widget.userModel.name,
                            style: TextStyle(
                              fontFamily: AppFonts.primaryFont,
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Divider(
                            thickness: 1,
                            color: AppColors.blue800,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "Gender",
                            style: TextStyle(
                              fontFamily: AppFonts.primaryFont,
                              color: AppColors.blue300,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            widget.userModel.gender,
                            style: TextStyle(
                              fontFamily: AppFonts.primaryFont,
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Divider(
                            thickness: 1,
                            color: AppColors.blue800,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "Date of birth",
                            style: TextStyle(
                              fontFamily: AppFonts.primaryFont,
                              color: AppColors.blue300,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            widget.userModel.dateOfBirth,
                            style: TextStyle(
                              fontFamily: AppFonts.primaryFont,
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Divider(
                            thickness: 1,
                            color: AppColors.blue800,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "Place of birth",
                            style: TextStyle(
                              fontFamily: AppFonts.primaryFont,
                              color: AppColors.blue300,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            widget.userModel.placeOfBirth,
                            style: TextStyle(
                              fontFamily: AppFonts.primaryFont,
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Divider(
                            thickness: 1,
                            color: AppColors.blue800,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "Time of birth",
                            style: TextStyle(
                              fontFamily: AppFonts.primaryFont,
                              color: AppColors.blue300,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            widget.userModel.timeOfBirth,
                            style: TextStyle(
                              fontFamily: AppFonts.primaryFont,
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: size.width,
                      child: Text(
                        "Credentials",
                        style: TextStyle(
                          fontFamily: AppFonts.primaryFont,
                          color: AppColors.blue300,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      width: size.width,
                      padding: const EdgeInsets.all(AppSizes.paddingLarge),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppSizes.cornerRadiusSizeEight,
                        ),
                        color: AppColors.blue900,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Phone number",
                            style: TextStyle(
                              fontFamily: AppFonts.primaryFont,
                              color: AppColors.blue300,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            widget.userModel.phoneNumber,
                            style: TextStyle(
                              fontFamily: AppFonts.primaryFont,
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Divider(
                            thickness: 1,
                            color: AppColors.blue800,
                          ),
                          const SizedBox(height: 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Email (optional)",
                                    style: TextStyle(
                                      fontFamily: AppFonts.primaryFont,
                                      color: AppColors.blue300,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    widget.userModel.emailId,
                                    style: TextStyle(
                                      fontFamily: AppFonts.primaryFont,
                                      color: AppColors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  "Change",
                                  style: TextStyle(
                                    fontFamily: AppFonts.primaryFont,
                                    color: AppColors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 48),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
