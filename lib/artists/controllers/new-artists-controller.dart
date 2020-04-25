import 'package:mobx/mobx.dart';
import 'package:music_app/core/services/firestore-service.dart';
part 'new-artists-controller.g.dart';

class NewArtistsController  = _NewArtistsController with _$NewArtistsController;

abstract class _NewArtistsController with Store{

  FirestoreService _firestoreService;

  _NewArtistsController(){
    this._firestoreService = new FirestoreService();
  }

  @observable
  String code;

  @observable
  bool codeIsValid;

  @action
  changeCode(String value){
    this.code = value;
  }

  String validateCode(){
    if (this.code == null || this.code == ""){
      this.codeIsValid = false;
      return "Campo obrigatório";
    }
   
    this.codeIsValid = true;
    return null;
  }

  @action
  addNewArtist() async {
     await this._firestoreService.addNewDocument(this.code);
  }
}