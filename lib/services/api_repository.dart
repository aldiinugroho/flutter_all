import 'package:my_app_learn/models/covid_model.dart';
import 'package:my_app_learn/services/api_provider.dart';

class ApiRepository {
  final _provider = ApiProvider();

  Future<CovidModel> fetchCovidList() {
    return _provider.fetchCovidList();
  }
}

class NetworkError extends Error {}
