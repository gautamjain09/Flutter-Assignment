import 'package:melooha_flutter_assignment/core/assets.dart';
import 'package:melooha_flutter_assignment/models/feedback_model.dart';
import 'package:melooha_flutter_assignment/models/home/cosmic_forecast_model.dart';
import 'package:melooha_flutter_assignment/models/home/personel_traits_model.dart';
import 'package:melooha_flutter_assignment/models/home/pose_questions_model.dart';
import 'package:melooha_flutter_assignment/models/home/today_insights_model.dart';
import 'package:melooha_flutter_assignment/models/order_model.dart';
import 'package:melooha_flutter_assignment/models/user_model.dart';

class DummyModels {
  static FeedbackModel dummyFeedbackModel = FeedbackModel(
    id: "9",
    text:
        "Accurate predictions. I like the way Vaani suggests the personalised questions. I wanted to suggest if we could have",
    createdTime: "Oct 22, 2023",
  );

  static OrderModel dummyFailedOrderModel = OrderModel(
    icon: AppAssets.questionIcon,
    text: "Questions - Gold",
    orderTime: "Dec 12, 2023, 12:34 PM",
    transationId: "TXN804740234",
    amount: "149",
    orderStatus: "Failed",
  );

  static OrderModel dummySuccessOrderModel = OrderModel(
    icon: AppAssets.reportIcon,
    text: "Reports - Diamond",
    orderTime: "Dec 12, 2023, 12:34 PM",
    transationId: "TXN804740234",
    amount: "149",
    orderStatus: "Success",
  );

  static UserModel userModel = UserModel(
    userId: "09",
    name: "Gautam Jain",
    gender: "Male",
    emailId: "gj@gmail.com",
    phoneNumber: "+919999999999",
    profileImage: "",
    dateOfBirth: "June 20, 1996",
    placeOfBirth: "Pune, Maharashtra, India",
    joiningTime: "Oct 12, 2023",
    timeOfBirth: "02 : 10 PM",
    privateProfile: false,
  );

  static TodayInsightsModel todayInsightsModel = TodayInsightsModel(
    id: "9",
    title: "Embrace change, trust intuition, and go for it today.",
    text:
        "One way to tackle the fear of change is to slowly change a few things one a time. There’s no need to pull the rug out from under yourself. Sometimes there are ways that you can grow into the change that you need to accomplish just by making small changes each day towards your goal.",
  );

  static CosmicForecastModel cosmicForecastModel = CosmicForecastModel(
    choghadiyaStart: "9:35 AM",
    choghadiyaEnd: "12:24 PM",
    rahukaalStart: "3:34 PM",
    rahukaalEnd: "6:54 PM",
    luckyColor: "Red",
    luckyNumber: 9,
  );

  static PoseQuestionsModel poseQuestionsModel =
      PoseQuestionsModel(id: "9", suggestions: [
    "What is the daily schedule for today?",
    "Do I need to prepare anything for work or school today?",
    "What is the weather like today?",
    "What events or appointments do I have today?",
    "Do I need to take anything with me when I leave the house today?",
  ]);

  static PersonelTraitsModel personelTraitsModel = PersonelTraitsModel(
    id: "9",
    title: "Emotional Intelligence",
    text:
        "Your emotions and behaviour come from you, they don’t come from anyone else and once you start accepting responsibility for how you feel and how you behave it will have a positive impact on all areas of your life.",
  );
}
