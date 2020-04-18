import 'package:mobx/mobx.dart';
part 'new-artists-controller.g.dart';

class NewArtistsController  = _NewArtistsController with _$NewArtistsController;

abstract class _NewArtistsController with Store{
  @observable
  String name;

  @observable
  bool nameIsValid;

  @action
  changeName(String value){
    this.name = value;
  }

  @observable
  String code;

  @observable
  bool codeIsValid;

  @action
  changeCode(String value){
    this.code = value;
  }

  String validateName(){
    if (this.name == null || this.name == ""){
      this.nameIsValid = false;
      return "Campo obrigatório";
    }
    else if (this.name.length < 3){
      this.nameIsValid = false;
      return "Nome inválido";
    }
    this.nameIsValid = true;
    return null;
  }

  String validateCode(){
    if (this.code == null || this.code == ""){
      this.codeIsValid = false;
      return "Campo obrigatório";
    }
   
    this.codeIsValid = true;
    return null;
  }
}