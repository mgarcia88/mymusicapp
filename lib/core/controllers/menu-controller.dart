import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
import 'package:music_app/core/services/firebase-service.dart';
part 'menu-controller.g.dart';

class MenuController = _MenuControllerBase with _$MenuController;

abstract class _MenuControllerBase with Store {
  
  FirebaseService _firebaseService = new FirebaseService();

  @observable
  FirebaseUser firebaseUser;

  @action
  getCurrentFirebaseUser() async {
    var currentFirebaseUser = await this._firebaseService.getCurrentUser();

    this.firebaseUser = currentFirebaseUser;
  }
}