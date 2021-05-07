import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class IncubatorState extends ChangeNotifier {
  int incubationDays;
  int powerPriority;
  double humidity;
  int birdType;
  double temperature;
  int hatchingDays;
  bool incubationStatus;
  bool loading;

  Future<void> getData() async {
    loading = true;
    notifyListeners();
    QueryBuilder dataQuery =
        new QueryBuilder<ParseObject>(ParseObject('IncubatorData'));
    ParseResponse response = await dataQuery.query();
    if (response.success) {
      ParseObject object = response.results.first;
      incubationDays = object.get('incubationDays');
      powerPriority = object.get('powerPriority');
      humidity = object.get('humidity');
      birdType = object.get('birdType');
      temperature = object.get('temperature');
      hatchingDays = object.get('hatchingDays');
      incubationStatus = object.get('incubationStatus');
      loading = false;
      notifyListeners();
    }
  }
}
