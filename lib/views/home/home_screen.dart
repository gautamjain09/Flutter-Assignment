import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:melooha_flutter_assignment/controllers/data_controller.dart';
import 'package:melooha_flutter_assignment/core/colors.dart';
import 'package:melooha_flutter_assignment/models/dummy_models.dart';
import 'package:melooha_flutter_assignment/models/user_model.dart';
import 'package:melooha_flutter_assignment/views/home/widgets/cosmic_forecast_card.dart';
import 'package:melooha_flutter_assignment/views/home/widgets/personel_traits_card.dart';
import 'package:melooha_flutter_assignment/views/home/widgets/pose_questions_card.dart';
import 'package:melooha_flutter_assignment/views/home/widgets/today_insights_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late UserModel userModel;
  late List<Widget> pages;
  final DataController _dataController = DataController();
  final PageController _pageController =
      PageController(viewportFraction: 0.9, keepPage: true);

  @override
  void initState() {
    super.initState();
    getLocalUserModel();
    getPageModelList();
  }

  void getLocalUserModel() {
    userModel = DummyModels.userModel;
  }

  void getPageModelList() {
    pages = [
      TodayInsightsCard(todayInsightsModel: DummyModels.todayInsightsModel),
      CosmicForecastCard(cosmicForecastModel: DummyModels.cosmicForecastModel),
      PoseQuestionsCard(poseQuestionsModel: DummyModels.poseQuestionsModel),
      PersonelTraitsCard(personelTraitsModel: DummyModels.personelTraitsModel)
    ];
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primaryDarkColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryMediumColor,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Home",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppColors.whiteColor,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: AppColors.primaryLightColor,
                  borderRadius: BorderRadius.circular(30)),
              padding: const EdgeInsets.all(4),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(userModel.profileImage),
                    radius: 12,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    userModel.name,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.offWhiteColor,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 16,
                    color: AppColors.whiteColor,
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: AppColors.primaryLightColor,
                    ),
                  ),
                  child: Icon(
                    Icons.notifications_outlined,
                    size: 24,
                    color: AppColors.offWhiteColor,
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.circle,
                      size: 12,
                      color: AppColors.redColor,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 4),
        color: AppColors.primaryDarkColor,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: StackedCardCarousel(
                type: StackedCardCarouselType.fadeOutStack,
                pageController: _pageController,
                items: pages,
                initialOffset: 4,
                spaceBetweenItems: size.height,
              ),
            ),
            const SizedBox(width: 4),
            SmoothPageIndicator(
              controller: _pageController,
              count: pages.length,
              axisDirection: Axis.vertical,
              effect: ExpandingDotsEffect(
                dotHeight: 8,
                dotWidth: 8,
                dotColor: AppColors.primaryLightColor,
                activeDotColor: AppColors.secondaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
