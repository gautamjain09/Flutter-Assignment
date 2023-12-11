import 'package:melooha_flutter_assignment/models/dummy_models.dart';

class DataController {
  List<dynamic> getPageModelList() {
    List<dynamic> pages = [];

    pages.add(DummyModels.todayInsightsModel);
    pages.add(DummyModels.cosmicForecastModel);
    pages.add(DummyModels.poseQuestionsModel);
    pages.add(DummyModels.personelTraitsModel);

    return pages;
  }
}
