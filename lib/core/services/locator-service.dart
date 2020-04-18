import 'package:get_it/get_it.dart';
import 'package:music_app/core/services/navigator-service.dart';

class LocatorService {
  GetIt locator = GetIt.instance;
  void setupLocator() {
    locator.registerLazySingleton(() => NavigatorService());
  }
}
