import 'package:get_it/get_it.dart';
import 'services/api/api_service.dart';
import 'services/local/local_service.dart';
import 'viewmodels/login_viewmodel.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // Here you register all your services
  locator.registerLazySingleton(() => ApiService());
  locator.registerLazySingleton(() => LocalService());

  // Here you register all your viewmodels
  locator.registerFactory(() => LoginViewModel());
}
