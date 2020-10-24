import 'package:flutter/foundation.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/home/repository/endereco_repository.dart';
import 'package:procurap/app/modules/home/repository/tipo_anuncio_repository.dart';
import 'package:procurap/app/modules/home/repository/tipo_hospedagem_repository.dart';
import 'package:procurap/app/modules/home/repository/tipo_imovel_repository.dart';
import 'package:procurap/app/shared/models/address_model.dart';
import 'package:procurap/app/shared/models/tipo_anuncio_model.dart';
import 'package:procurap/app/shared/models/tipo_hospedagem_model.dart';
import 'package:procurap/app/shared/models/tipo_imovel_model.dart';
import 'package:procurap/app/shared/repository/address_repository.dart';

part 'property_controller.g.dart';

@Injectable()
class PropertyController = _PropertyControllerBase with _$PropertyController;

abstract class _PropertyControllerBase with Store {
  var maskCep = MaskTextInputFormatter(
      mask: "#####-###", filter: {"#": RegExp(r'[0-9]')});
  var maskPhone1 = MaskTextInputFormatter(
      mask: "(##) #####-####", filter: {"#": RegExp(r'[0-9]')});
  var maskPhone2 = MaskTextInputFormatter(
      mask: "(##) #####-####", filter: {"#": RegExp(r'[0-9]')});
  var maskPriceProperty = MaskTextInputFormatter(
      mask: "###########", filter: {"#": RegExp(r'[0-9]')});
  var maskPriceRent =
      MaskTextInputFormatter(mask: "##,00", filter: {"#": RegExp(r'[0-9]')});

  final AddressRepository addressRepository;
  final TipoAnuncioRepository tipoAnuncioRepository;
  final EnderecoRepository enderecoRepository;
  final TipoImovelRepository tipoImovelRepository;
  final TipoHospedagemRepository tipoHospedagemRepository;

  @observable
  ObservableFuture<ObservableList<TipoAnuncioModel>> tipoAnuncios;

  @observable
  ObservableFuture<ObservableList<TipoImovelModel>> tipoImoveis;

  @observable
  ObservableFuture<ObservableList<TipoHospedagemModel>> tipoHospedagens;

  _PropertyControllerBase(
    this.addressRepository,
    this.tipoAnuncioRepository,
    this.enderecoRepository,
    this.tipoImovelRepository,
    this.tipoHospedagemRepository,
  ) {
    // this.enderecoRepository.getAll();
    this.tipoAnuncios = this.tipoAnuncioRepository.getAll().asObservable();
    this.tipoImoveis = this.tipoImovelRepository.getAll().asObservable();
    this.tipoHospedagens =
        this.tipoHospedagemRepository.getAll().asObservable();
  }

  List<String> statesBr = listStates;

  @observable
  ObservableList<String> urlImagesList = ObservableList();

  // ___________________________________________________________________________

  @observable
  TipoAnuncioModel tipoAnuncio;

  @observable
  TipoImovelModel tipoImovel;

  @observable
  TipoHospedagemModel tipoHospedagem;

  @observable
  int numBanheiro;

  @observable
  int numGaragen;

  @observable
  int numQuartos;

  @observable
  int numConzinha;

  @action
  setTipoImovelModel(String value) {
    for (var item in this.tipoImoveis.value) {
      if (item.nome == value) {
        this.tipoImovel = item;
      }
    }
  }

  @action
  setTipoAnuncioModel(String value) {
    for (var item in this.tipoAnuncios.value) {
      if (item.nome == value) {
        this.tipoAnuncio = item;
      }
    }
  }

  @action
  setTipoHospedagemModel(String value) {
    for (var item in this.tipoHospedagens.value) {
      if (item.nome == value) {
        this.tipoHospedagem = item;
      }
    }
  }

  @action
  setNumBanheiro(String value) => this.numBanheiro = int.parse(value);

  @action
  setNumGaragem(String value) => this.numGaragen = int.parse(value);

  @action
  setNumqQuarto(String value) => this.numQuartos = int.parse(value);

  @action
  setNumCozinha(String value) => this.numConzinha = int.parse(value);

  @computed
  bool get valTipoAnuncio => (this.tipoAnuncio != null);

  @computed
  bool get valTipoImovel => (this.tipoImovel != null);

  @computed
  bool get valiTipoHospedagem => (this.tipoHospedagem != null);

  // @computed
  // bool get valTiNumBanhero => (this.numBanheiro != null);

  // @computed
  // bool get valTiNumGaragen => (this.numGaragen != null);

  // @computed
  // bool get valTiNumQuaos => (this.numQuartos != null);

  // @computed
  // bool get valTiNumCozinha => (this.numConzinha != null);

  @computed
  bool get valQtd =>
      this.numConzinha != null &&
      this.numQuartos != null &&
      this.numGaragen != null &&
      this.numBanheiro != null;

  // ___________________________________________________________________________

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
  setCep_(String value) => this.cep = value;

  @action
  Future setCep(String value) async {
    this.cep = value;
    if (cep.length == 9) {
      AddressModel addres =
          await addressRepository.getByCep(this.cep.replaceAll('-', ''));
      if (addres.cep != null) {
        this.city = addres.localidade;
        this.state = addres.uf;
        this.complement = addres.complemento;
        this.neighborhood = addres.bairro;
        this.publicPlace = addres.logradouro;
      }
    }
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
    if (this.cep == null || this.cep.isEmpty)
      return "O campo CEP é Obrigatório";
    if (this.cep.length < 9) return "CEP inválido";
    return this.msgCep;
  }

  bool get validateEndereco =>
      this.validatCep == null &&
      this.validatState == null &&
      this.validatPublicPlace == null &&
      this.validatNeighborhood == null &&
      this.validatComplement == null &&
      this.validatNumber == null &&
      this.validatCity == null;

  @action
  Future<bool> getCep() async {
    this.upload = false;
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
