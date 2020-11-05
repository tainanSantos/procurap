import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/home/repository/contato_repository.dart';
import 'package:procurap/app/modules/home/repository/endereco_repository.dart';
import 'package:procurap/app/modules/home/repository/imagem_repository.dart';
import 'package:procurap/app/modules/home/repository/imovel_repository.dart';
import 'package:procurap/app/modules/home/repository/tipo_anuncio_repository.dart';
import 'package:procurap/app/modules/home/repository/tipo_hospedagem_repository.dart';
import 'package:procurap/app/modules/home/repository/tipo_imovel_repository.dart';
import 'package:procurap/app/shared/models/address_model.dart';
import 'package:procurap/app/shared/models/contato_model.dart';
import 'package:procurap/app/shared/models/endereco_model.dart';
import 'package:procurap/app/shared/models/imagem_model.dart';
import 'package:procurap/app/shared/models/imovel_model.dart';
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
  final ImovelRepository imovelRepository;
  final ContatoRepository contatoRepository;
  final ImagemRepository imagemRepository;

  @observable
  ObservableFuture<ObservableList<TipoAnuncioModel>> tipoAnuncios;

  @observable
  ObservableFuture<ObservableList<TipoImovelModel>> tipoImoveis;

  @observable
  ObservableFuture<ObservableList<TipoHospedagemModel>> tipoHospedagens;

  @observable
  ObservableList<String> urlImagesList;

  _PropertyControllerBase(
    this.addressRepository,
    this.tipoAnuncioRepository,
    this.enderecoRepository,
    this.tipoImovelRepository,
    this.tipoHospedagemRepository,
    this.imovelRepository,
    this.contatoRepository,
    this.imagemRepository,
  ) {
    this.urlImagesList = ObservableList<String>();
    this.tipoAnuncios = this.tipoAnuncioRepository.findAll().asObservable();
    this.tipoImoveis = this.tipoImovelRepository.findAll().asObservable();
    this.tipoHospedagens =
        this.tipoHospedagemRepository.findAll().asObservable();
  }

  List<String> statesBr = listStates;

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

  @observable
  String descricao;

  @observable
  double aluguel;

  @observable
  double precoImovel;

  @observable
  String telFixo;

  @observable
  String telCelular;

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

  @action
  setDescricao(String value) => this.descricao = value;

  @action
  setAluguel(String value) => this.aluguel = double.parse(value);

  @action
  setPrecoImovel(String value) => this.precoImovel = double.parse(value);

  @action
  setTelFixo(String value) => this.telFixo = value;

  @action
  setTelCelular(String value) => this.telCelular = value;

  @action
  addUrlImage(String value) => this.urlImagesList.add(value);

  @computed
  bool get valTipoAnuncio => (this.tipoAnuncio != null);

  @computed
  bool get valTipoImovel => (this.tipoImovel != null);

  @computed
  bool get valiTipoHospedagem => (this.tipoHospedagem != null);

  @computed
  bool get valQtd =>
      this.numConzinha != null &&
      this.numQuartos != null &&
      this.numGaragen != null &&
      this.numBanheiro != null;

  @computed
  bool get valTelFixo => (this.telFixo == null || this.telFixo.isEmpty)
      ? false
      : ((this.telFixo.length < 15) ? false : true);

  @computed
  bool get valTelCelular => (this.telCelular == null || this.telCelular.isEmpty)
      ? false
      : (this.telCelular.length < 15)
          ? false
          : true;

  // ___________________________________________________________________________

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

  @observable
  String msgErroCep;

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
  setMsgErroCep(value) => this.msgErroCep = value;

  @action
  Future setCep(String value) async {
    print("Entrei no cep");
    print(this.msgErroCep);
    if (this.msgErroCep != null) {
      setMsgErroCep(null);
    }
    this.cep = value;
    if (cep.length == 9) {
      AddressModel addres =
          await addressRepository.getByCep(this.cep.replaceAll('-', ''));

      print(addres.toJson());
      if (addres.cep != null) {
        this.city = addres.localidade;
        this.state = addres.uf;
        this.complement = addres.complemento;
        this.neighborhood = addres.bairro;
        this.publicPlace = addres.logradouro;
      } else {
        // tem que nótificar que o cep é inválido
        setMsgErroCep("Cep inválido");
      }
      Modular.to.pop(); // para fechar o alert dialog
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
    if (this.cep.length == 9) return this.msgErroCep;
  }

  @computed
  String get validMsgErroCep => this.msgErroCep;

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

  @observable
  EnderecoModel endereco;

  @observable
  ImovelModel imovelModel;

  @observable
  bool salvandoImovel;

  salvarImovel() async {
    // SALVA O ENDERECO
    this.salvandoImovel = false;
    if (this.endereco?.id == null) {
      this.endereco = EnderecoModel();
    }
    this.endereco.logradouro = this.publicPlace;
    this.endereco.numero = this.number;
    this.endereco.bairro = this.neighborhood;
    this.endereco.complemento = this.complement;
    this.endereco.cidade = this.city;
    this.endereco.estado = this.state;
    this.endereco.cep = this.cep;

    EnderecoModel ender = await enderecoRepository.save(this.endereco);

    // SALVA IMÓVEL

    if (this.imovelModel?.id == null) {
      this.imovelModel = ImovelModel();
    }
    this.imovelModel.endereco = ender.id;
    this.imovelModel.tipoAnuncio = this.tipoAnuncio.id;
    this.imovelModel.tipoImovel = this.tipoImovel.id;
    this.imovelModel.numBanheiros = this.numBanheiro;
    this.imovelModel.numQuartos = this.numQuartos;
    this.imovelModel.numVagas = this.numGaragen;
    this.imovelModel.descricao = this.descricao;
    this.imovelModel.numConzinhas = this.numConzinha;
    this.imovelModel.classificacao = "10";
    this.imovelModel.descricao = "";

    this.imovelModel.precoAluguel = "${this.aluguel}";
    this.imovelModel.precoImovel = "${this.precoImovel}";

    ImovelModel imov = await this.imovelRepository.save(imovelModel);

    // SALVA IMAGENS
    // List<ImagemModel> imgs = List<ImagemModel>();
    for (var i = 0; i < this.urlImagesList.length; i++) {
      ImagemModel img = ImagemModel();
      img.imovel = imov.id;
      img.url = this.urlImagesList[i];
      await imagemRepository.save(img);
      // imgs.add(img);
    }

    // ImagemModel imgsResp = await imagemRepository.save(imgs);

    // SALVA COTATOS
    ContatoModel fixo = ContatoModel();
    fixo.tipoContato = 2;
    fixo.valor = this.telFixo;
    fixo.imovel = imov.id;
    await this.contatoRepository.save(fixo);

    ContatoModel celular = ContatoModel();
    celular.tipoContato = 2;
    celular.valor = this.telCelular;
    celular.imovel = imov.id;

    print("CELULAR >>> ${celular.toJson()}");
    print("FIXO >>> ${fixo.toJson()}");

    await this.contatoRepository.save(celular);

    this.salvandoImovel = true;
  }
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
