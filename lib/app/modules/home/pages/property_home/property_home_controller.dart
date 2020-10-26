import 'dart:async';

import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/home/repository/endereco_repository.dart';
import 'package:procurap/app/modules/home/repository/imagem_repository.dart';
import 'package:procurap/app/modules/home/repository/imovel_repository.dart';
import 'package:procurap/app/modules/home/repository/tipo_anuncio_repository.dart';
import 'package:procurap/app/modules/home/repository/tipo_hospedagem_repository.dart';
import 'package:procurap/app/modules/home/repository/tipo_imovel_repository.dart';
import 'package:procurap/app/shared/models/endereco_model.dart';
import 'package:procurap/app/shared/models/imagem_model.dart';
import 'package:procurap/app/shared/models/imovel_model.dart';
import 'package:procurap/app/shared/models/tipo_anuncio_model.dart';
import 'package:procurap/app/shared/models/tipo_hospedagem_model.dart';
import 'package:procurap/app/shared/models/tipo_imovel_model.dart';
import 'package:procurap/app/shared/repository/address_repository.dart';

part 'property_home_controller.g.dart';

@Injectable()
class PropertyHomeController = _PropertyHomeControllerBase
    with _$PropertyHomeController;

abstract class _PropertyHomeControllerBase with Store {
  final ImovelRepository imovelRepository;
  final TipoAnuncioRepository tipoAnuncioRepository;
  final EnderecoRepository enderecoRepository;
  final TipoImovelRepository tipoImovelRepository;
  final TipoHospedagemRepository tipoHospedagemRepository;
  final ImagemRepository imagemRepository;

  @observable
  ObservableFuture<ObservableList<ImovelModel>> imovelModels;

  @observable
  ObservableFuture<ObservableList<TipoAnuncioModel>> tipoAnuncios;

  @observable
  ObservableFuture<ObservableList<TipoImovelModel>> tipoImoveis;

  @observable
  ObservableFuture<ObservableList<TipoHospedagemModel>> tipoHospedagens;

  @observable
  ObservableFuture<ObservableList<ImagemModel>> imagens;

  @observable
  ObservableFuture<ObservableList<EnderecoModel>> enderecos;

  @observable
  ImovelModel imovelModel;

  @observable
  EnderecoModel enderecoModel;

  // @observable
  // ObservableList<String> urlImagesList;

  _PropertyHomeControllerBase(
    this.tipoAnuncioRepository,
    this.enderecoRepository,
    this.tipoImovelRepository,
    this.tipoHospedagemRepository,
    this.imovelRepository,
    this.imagemRepository,
  ) {
    this.imovelModels = this.imovelRepository.findAll().asObservable();

    this.tipoAnuncios = this.tipoAnuncioRepository.findAll().asObservable();
    this.tipoImoveis = this.tipoImovelRepository.findAll().asObservable();
    this.tipoHospedagens =
        this.tipoHospedagemRepository.findAll().asObservable();
    this.imagens = this.imagemRepository.findAll().asObservable();
    this.enderecos = this.enderecoRepository.findAll().asObservable();
  }

  @action
  setImovelModel(ImovelModel value) => this.imovelModel = value;

  @action
  setEnderecoModel(EnderecoModel value) => this.enderecoModel = value;

  @action
  List<String> getImgsImovel(int id) {
    if (this.imagens != null) {
      var imgs = List<String>();
      for (var item in this.imagens.value) {
        if (item.imovel == id) imgs.add(item.url);
      }
      return imgs;
    }
  }

  @action
  String getTipoImovel(int id) {
    if (this.imagens != null)
      for (var item in this.tipoImoveis.value)
        if (item.id == id) return item.nome;
  }

  @action
  EnderecoModel getEndereco(int id) {
    if (this.enderecos != null)
      for (var item in this.enderecos.value) if (item.id == id) return item;
  }
}
