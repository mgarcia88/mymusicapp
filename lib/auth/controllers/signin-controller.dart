import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
import 'package:music_app/artists/views/artists-page.dart';
import 'package:music_app/core/services/firebase-service.dart';
import 'package:music_app/core/services/locator-service.dart';
import 'package:music_app/core/services/navigator-service.dart';
part 'signin-controller.g.dart';

class SigninController = _SigninControllerBase with _$SigninController;

abstract class _SigninControllerBase with Store {
  @observable
  String username;

  @observable
  bool usernameIsValid;

  @action
  changeUsername(String value) {
    this.username = value;
  }

  @observable
  String password;

  @observable
  bool passwordIsValid;

  @observable
  FirebaseUser firebaseUser;

  @observable
  bool isLoading;

  FirebaseService _firebaseService;

  NavigatorService _navigationService;

  LocatorService locatorService = new LocatorService();

  _SigninControllerBase() {
    this._firebaseService = new FirebaseService();
    this._navigationService = locatorService.locator<NavigatorService>();
    this.setLoading(false);
  }

  @action
  changePassword(String value) {
    this.password = value;
  }

  setFirebaseUser() async {
    this.firebaseUser = await this._firebaseService.handleSignIn();
  }

  setLoading(bool value) {
    this.isLoading = value;
  }

  String validateUsername() {
    if (this.username == null || this.username == "") {
      this.usernameIsValid = false;
      return "Campo obrigatório";
    } else if (this.username.length < 3) {
      this.usernameIsValid = false;
      return "Usuário inválido";
    }
    this.usernameIsValid = true;
    return null;
  }

  String validatePassword() {
    if (this.password == null || this.password == "") {
      this.passwordIsValid = false;
      return "Campo obrigatório";
    }

    this.passwordIsValid = true;
    return null;
  }

  @action
  Future signinWithGoogle() async {
    this.setLoading(true);
    await this.setFirebaseUser();
    this.setLoading(false);
    if (this.firebaseUser != null && this.firebaseUser.displayName != "") {
      return this
          ._navigationService
          .pushNamed(ArtistsPage.route, null);
    } else {
      return Future.value(null);
    }
  }
}
