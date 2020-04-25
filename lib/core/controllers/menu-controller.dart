import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
import 'package:music_app/core/services/firebase-service.dart';
import 'package:music_app/core/services/locator-service.dart';
import 'package:music_app/core/services/navigator-service.dart';
part 'menu-controller.g.dart';

class MenuController = _MenuControllerBase with _$MenuController;

abstract class _MenuControllerBase with Store {
  
  FirebaseService _firebaseService = new FirebaseService();
  NavigatorService _navigatorService;
  LocatorService _locatorService = new LocatorService();

  _MenuControllerBase(){
    this._navigatorService = this._locatorService.locator<NavigatorService>();
  }

  @observable
  FirebaseUser firebaseUser;

  @action
  getCurrentFirebaseUser() async {
    var currentFirebaseUser = await this._firebaseService.getCurrentUser();

    this.firebaseUser = currentFirebaseUser;
  }

  @action
  void logout(){
    this._firebaseService.logout();
    this._navigatorService.pop();
    this._navigatorService.pushNamed("/signup", null);
  }

  void goToPage(String route){
    this._navigatorService.pop();
    this._navigatorService.pushNamed(route, null);
  }
}