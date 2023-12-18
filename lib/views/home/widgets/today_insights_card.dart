import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:melooha_flutter_assignment/core/colors.dart';
import 'package:melooha_flutter_assignment/models/home/today_insights_model.dart';

class TodayInsightsCard extends StatefulWidget {
  final TodayInsightsModel todayInsightsModel;
  const TodayInsightsCard({
    super.key,
    required this.todayInsightsModel,
  });

  @override
  State<TodayInsightsCard> createState() => _TodayInsightsCardState();
}

class _TodayInsightsCardState extends State<TodayInsightsCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.70,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Flexible(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.70,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.primaryLightColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Dec 12 2023",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.offWhiteColor,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            "Today's Insights",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.whiteColor,
                            ),
                          ),
                          const SizedBox(height: 24),
                          Flexible(
                            child: Text(
                              widget.todayInsightsModel.title,
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: AppColors.whiteColor,
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Flexible(
                            child: Text(
                              widget.todayInsightsModel.text,
                              style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: AppColors.offWhiteColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.primaryMediumColor,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.thumb_up_off_alt,
                                size: 22,
                                color: AppColors.offWhiteColor,
                              ),
                              Text(
                                " | ",
                                style: TextStyle(
                                  color: AppColors.primaryLightColor,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Icon(
                                Icons.thumb_down_off_alt,
                                size: 22,
                                color: AppColors.offWhiteColor,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: AppColors.primaryMediumColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.share_outlined,
                            size: 20,
                            color: AppColors.offWhiteColor,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 6,
            margin: const EdgeInsets.only(left: 12, right: 12),
            decoration: BoxDecoration(
              color: AppColors.primaryLightColor.withOpacity(1),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
          Container(
            height: 6,
            margin: const EdgeInsets.only(left: 24, right: 24),
            decoration: BoxDecoration(
              color: AppColors.primaryLightColor.withOpacity(0.70),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
