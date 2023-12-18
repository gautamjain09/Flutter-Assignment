import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:melooha_flutter_assignment/controllers/data_controller.dart';
import 'package:melooha_flutter_assignment/core/assets.dart';
import 'package:melooha_flutter_assignment/core/colors.dart';
import 'package:melooha_flutter_assignment/core/fonts.dart';
import 'package:melooha_flutter_assignment/core/sizes.dart';
import 'package:melooha_flutter_assignment/core/utils.dart';
import 'package:melooha_flutter_assignment/models/feedback_model.dart';
import 'package:melooha_flutter_assignment/views/profile/submit_feedback_screen.dart';
import 'package:melooha_flutter_assignment/views/profile/widgets/feedback_card.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  final DataController _dataController = DataController();
  List<FeedbackModel> feedbacks = [];

  @override
  void initState() {
    super.initState();
    feedbacks = _dataController.getFeedbacksList();
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
          "Feedback",
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
          child: (feedbacks.isEmpty)
              ? Container(
                  width: size.width,
                  height: size.height,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: size.width / 3,
                      ),
                      SvgPicture.asset(AppAssets.emptyFeedbackImage),
                      const SizedBox(height: 16),
                      Text(
                        "Enhance Your Experience",
                        style: TextStyle(
                          fontFamily: AppFonts.secondaryFont,
                          color: AppColors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "We value your input! Tell us about your experience to enhance and personalize your cosmic journey.",
                        style: TextStyle(
                          fontFamily: AppFonts.primaryFont,
                          color: AppColors.blue300,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 24),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 6, bottom: 6),
                          decoration: BoxDecoration(
                            color: AppColors.pink600,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            "Share Feedback",
                            style: TextStyle(
                              fontFamily: AppFonts.primaryFont,
                              color: AppColors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ))
              : ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemCount: feedbacks.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        FeedbackCard(feedbackModel: feedbacks[index]),
                        const SizedBox(height: 16),
                      ],
                    );
                  },
                ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: (feedbacks.isEmpty)
          ? const SizedBox()
          : GestureDetector(
              onTap: () {
                showCustomBottomSheet(context: context);
              },
              child: Container(
                height: 54,
                width: size.width,
                padding: const EdgeInsets.all(AppSizes.paddingLarge),
                margin: const EdgeInsets.all(AppSizes.paddingLarge),
                decoration: BoxDecoration(
                  color: AppColors.pink600,
                  borderRadius:
                      BorderRadius.circular(AppSizes.cornerRadiusSizeEight),
                ),
                child: Center(
                  child: Text(
                    "Add Feedback",
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
    );
  }
}

void showCustomBottomSheet({
  required BuildContext context,
}) {
  final TextEditingController _textController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  final size = MediaQuery.of(context).size;

  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    isScrollControlled: true,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    backgroundColor: AppColors.blue900,
    context: context,
    builder: (context) {
      return Form(
        key: _formKey,
        child: Container(
          width: size.width,
          padding: const EdgeInsets.all(16),
          color: AppColors.blue900,
          height: size.height * 0.86,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width,
                child: Center(
                  child: Text(
                    "Share Feedback",
                    style: TextStyle(
                      fontFamily: AppFonts.secondaryFont,
                      color: AppColors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                "Tell us about your experience. Your insights will help us enhance your experience with Melooha.",
                style: TextStyle(
                  fontFamily: AppFonts.primaryFont,
                  color: AppColors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 16),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  SizedBox(
                    width: size.width,
                    height: 280,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your feedback';
                        }
                        return null;
                      },
                      style: TextStyle(
                        fontFamily: AppFonts.primaryFont,
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      minLines: null,
                      maxLines: null,
                      expands: true,
                      autofocus: false,
                      controller: _textController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.blue800,
                        border: InputBorder.none,
                        hintText: "Start writing your thoughts..",
                        hintStyle: TextStyle(
                          fontFamily: AppFonts.primaryFont,
                          color: AppColors.blue400,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(AppSizes.paddingLarge),
                    child: Text(
                      "0/1000 Characters",
                      style: TextStyle(
                        fontFamily: AppFonts.primaryFont,
                        color: AppColors.blue400,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                "Attach Image",
                style: TextStyle(
                  fontFamily: AppFonts.primaryFont,
                  color: AppColors.blue300,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                height: 64,
                width: 64,
                padding: const EdgeInsets.all(AppSizes.paddingSmall),
                decoration: BoxDecoration(
                  color: AppColors.blue600,
                  borderRadius: BorderRadius.circular(3),
                ),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    color: AppColors.white,
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(AppSizes.paddingSmall),
                    decoration: BoxDecoration(
                      color: AppColors.blue800,
                      borderRadius: BorderRadius.circular(
                        AppSizes.cornerRadiusSizeFour,
                      ),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        AppAssets.shieldStarIcon,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      "Information shared with Melooha are strictly private and solely for your personal improvement.",
                      style: TextStyle(
                        fontFamily: AppFonts.primaryFont,
                        color: AppColors.blue300,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        width: size.width,
                        padding: const EdgeInsets.all(AppSizes.paddingLarge),
                        decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: AppColors.pink600),
                          borderRadius: BorderRadius.circular(
                              AppSizes.cornerRadiusSizeEight),
                        ),
                        child: Center(
                          child: Text(
                            "Back",
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
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          if (_textController.text.trim() != "") {
                            pushScreenNavigation(
                              widget: const SubmitFeedbackScreen(),
                              context: context,
                            );
                          }
                        }
                      },
                      child: Container(
                        width: size.width,
                        padding: const EdgeInsets.all(AppSizes.paddingLarge),
                        decoration: BoxDecoration(
                          color: AppColors.pink600,
                          borderRadius: BorderRadius.circular(
                              AppSizes.cornerRadiusSizeEight),
                        ),
                        child: Center(
                          child: Text(
                            "Submit",
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
                  ),
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}
