import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'new_property_controller.g.dart';

@Injectable()
class NewPropertyController = _NewPropertyControllerBase
    with _$NewPropertyController;

abstract class _NewPropertyControllerBase with Store {
  // AddressRepository addressRepository;

  // _AddressControllerBase(this.addressRepository);

  var maskCep = MaskTextInputFormatter(
      mask: "#####-###", filter: {"#": RegExp(r'[0-9]')});

  List<String> statesBr = listStates;

  @observable
  ObservableList<String> urlImagesList = ObservableList();

  @observable
  String msgCep;

  //___________________________________

  @observable
  String publicPlace; // rua/ bairro

  @observable
  String neighborhood;

  @observable
  String number;

  @observable
  String complement;

  @observable
  String city;

  @observable
  String state;

  @observable
  String cep;

  @action
  setPublicPlace(String value) => this.publicPlace = value;

  @action
  setNeighborhood(String value) => this.neighborhood = value;

  @action
  setNumber(String value) => this.number = value;

  @action
  setComplement(String value) => this.complement = value;

  @action
  setCity(String value) => this.city = value;

  @action
  setstate(String value) => this.state = value;

  @action
  setCep(String value) {
    this.cep = value;
  }

  @computed
  String get validatPublicPlace {
    if (this.publicPlace == null || this.publicPlace.isEmpty) {
      return "O campo LOGRADOURO é obrigatório.";
    }
    return null;
  }

  @computed
  String get validatNeighborhood {
    if (this.neighborhood == null || this.neighborhood.isEmpty) {
      return "O campo BAIRRO é obrigatório.";
    }
    return null;
  }

  @computed
  String get validatNumber {
    if (this.number == null || this.number.isEmpty) {
      return "Campo Obrigatório.";
    }
    return null;
  }

  @computed
  String get validatComplement {
    if (this.complement == null || this.complement.isEmpty) {
      return "O campo COMPLEMENTO é obrigatório.";
    }
    return null;
  }

  @computed
  String get validatCity {
    if (this.city == null || this.city.isEmpty) {
      return "O campo CIDADE é obrigatório.";
    }
    return null;
  }

  @computed
  String get validatState {
    if (this.state == null || this.state.isEmpty) {
      return "Campo obrigatório.";
    }
    return null;
  }

  @computed
  String get validatCep {
    if (this.cep == null || this.cep.isEmpty) {
      return "O campo CEP é Obrigatório";
    }
    return this.msgCep;
  }

  @action
  Future<bool> getCep() async {
    print("Fazendo requisição!!!");
    this.upload = false;

    // var data = await this.addressRepository.findByCep(this.cep);

    // if (data != null) {
    //   print("O retorno não é mnulo!!!!");
    //   setCity(data['city'].isEmpty ? this.city : data['city']);
    //   setstate(data['state'].isEmpty ? this.state : data['state']);
    //   this.msgCep = null;
    // } else {
    //   this.msgCep = "Digite um CEP válido";
    // }

    // this.upload = true;
    // return true;
  }

  void removeMask() {
    if (this.cep != null) {
      setCep(this.cep.replaceAll('-', ''));
    }
  }

  @observable
  bool upload = false;
}

const List<String> listStates = [
  "AC",
  "AL",
  "AP",
  "AM",
  "BA",
  "CE",
  "DF",
  "ES",
  "GO",
  "MA",
  "MT",
  "MS",
  "MG",
  "PA",
  "PB",
  "PR",
  "PE",
  "PI",
  "RJ",
  "RN",
  "RO",
  "RR",
  "SC",
  "SP",
  "SE",
  "TO"
];
