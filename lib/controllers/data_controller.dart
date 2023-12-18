import 'package:melooha_flutter_assignment/models/dummy_models.dart';
import 'package:melooha_flutter_assignment/models/feedback_model.dart';
import 'package:melooha_flutter_assignment/models/order_model.dart';
import 'package:melooha_flutter_assignment/models/user_model.dart';

class DataController {
  List<dynamic> getPageModelList() {
    List<dynamic> pages = [];

    pages.add(DummyModels.todayInsightsModel);
    pages.add(DummyModels.cosmicForecastModel);
    pages.add(DummyModels.poseQuestionsModel);
    pages.add(DummyModels.personelTraitsModel);

    return pages;
  }

  List<OrderModel> getAccountSummaryOrders() {
    List<OrderModel> orders = [];

    orders.add(DummyModels.dummyFailedOrderModel);
    orders.add(DummyModels.dummySuccessOrderModel);
    orders.add(DummyModels.dummySuccessOrderModel);

    return orders;
  }

  List<FeedbackModel> getFeedbacksList() {
    List<FeedbackModel> feedbacks = [];

    feedbacks.add(DummyModels.dummyFeedbackModel);

    return feedbacks;
  }

  List<UserModel> getReferedUsersList() {
    List<UserModel> users = [];
    users.add(DummyModels.userModel);
    users.add(DummyModels.userModel);
    users.add(DummyModels.userModel);

    return users;
  }
}
