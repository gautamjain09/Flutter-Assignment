import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:melooha_flutter_assignment/controllers/data_controller.dart';
import 'package:melooha_flutter_assignment/core/assets.dart';
import 'package:melooha_flutter_assignment/core/colors.dart';
import 'package:melooha_flutter_assignment/core/fonts.dart';
import 'package:melooha_flutter_assignment/core/sizes.dart';
import 'package:melooha_flutter_assignment/models/user_model.dart';
import 'package:melooha_flutter_assignment/views/profile/widgets/refered_user_card.dart';

class ReferAndEarnScreen extends StatefulWidget {
  const ReferAndEarnScreen({super.key});

  @override
  State<ReferAndEarnScreen> createState() => _ReferAndEarnScreenState();
}

class _ReferAndEarnScreenState extends State<ReferAndEarnScreen> {
  final DataController _dataController = DataController();
  List<UserModel> referedUsersList = [];

  @override
  void initState() {
    super.initState();
    referedUsersList = _dataController.getReferedUsersList();
    setState(() {});
  }

  void copyLink(String text) {
    Clipboard.setData(ClipboardData(text: text)).then((_) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Copied!")));
    });
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
          "Refer & Earn",
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
              Container(
                padding: const EdgeInsets.all(AppSizes.paddingLarge),
                decoration: BoxDecoration(
                  color: AppColors.blue900,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 24),
                    SvgPicture.asset(AppAssets.referEarnImage),
                    const SizedBox(height: 24),
                    Text(
                      "Refer & Earn Premium Questions!",
                      style: TextStyle(
                        fontFamily: AppFonts.secondaryFont,
                        color: AppColors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Refer a friend or family member & earn 1 Premium Questions absolutely free from Melooha. ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: AppFonts.primaryFont,
                        color: AppColors.blue300,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 12, bottom: 12),
                      decoration: BoxDecoration(
                        color: AppColors.blue700,
                        borderRadius: BorderRadius.circular(37),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(AppAssets.questionIcon),
                          Text(
                            "  9 Questions Earned",
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
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "Copy link",
                style: TextStyle(
                  fontFamily: AppFonts.primaryFont,
                  color: AppColors.blue300,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 4),
              Container(
                width: size.width,
                padding: const EdgeInsets.only(
                    left: 16, right: 16, top: 12, bottom: 12),
                decoration: BoxDecoration(
                  color: AppColors.blue800,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Melooha/refer&earn/user32/ref/23",
                      style: TextStyle(
                        fontFamily: AppFonts.primaryFont,
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          copyLink("Melooha/refer&earn/user32/ref/23");
                        });
                      },
                      child: SvgPicture.asset(
                        AppAssets.copyLinkIcon,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Divider(
                      thickness: 1,
                      color: AppColors.blue700,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    "OR",
                    style: TextStyle(
                      fontFamily: AppFonts.secondaryFont,
                      color: AppColors.blue300,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Expanded(
                    child: Divider(
                      thickness: 1,
                      color: AppColors.blue700,
                    ),
                  ),
                  const SizedBox(width: 8),
                ],
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  // Share Function
                },
                child: Container(
                  width: size.width,
                  padding: const EdgeInsets.all(AppSizes.paddingLarge),
                  decoration: BoxDecoration(
                    color: AppColors.pink600,
                    borderRadius:
                        BorderRadius.circular(AppSizes.cornerRadiusSizeEight),
                  ),
                  child: Center(
                    child: Text(
                      "Share Link",
                      style: TextStyle(
                        fontFamily: AppFonts.primaryFont,
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                "Successful Onboards",
                style: TextStyle(
                  fontFamily: AppFonts.primaryFont,
                  color: AppColors.blue300,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 16),
              ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: referedUsersList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      const SizedBox(height: 8),
                      ReferedUserCard(model: referedUsersList[index]),
                      const SizedBox(height: 8),
                      const Divider(
                        thickness: 1,
                        color: AppColors.blue800,
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
