import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/repos/home_repo_implemntation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImplemntation>(
    HomeRepoImplemntation(getIt.get<ApiService>()),
  );
  getIt.registerSingleton<AuthRepo>(
    AuthRepo(getIt.get<ApiService>()),
  );
}

class AuthRepo {
  final ApiService apiService;

  AuthRepo(this.apiService);
}
