import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/home/pages/property_home/property_home_controller.dart';
import 'package:procurap/app/shared/models/contato_model.dart';
import 'package:procurap/app/shared/models/endereco_model.dart';
import 'package:procurap/app/shared/models/imagem_model.dart';
import 'package:procurap/app/shared/models/imovel_model.dart';
import 'package:procurap/app/shared/models/tipo_anuncio_model.dart';
import 'package:procurap/app/shared/models/tipo_hospedagem_model.dart';
import 'package:procurap/app/shared/models/tipo_imovel_model.dart';

part 'filter_controller.g.dart';

@Injectable()
class FilterController = _FilterControllerBase with _$FilterController;

abstract class _FilterControllerBase with Store {
  final propertyHomeController = Modular.get<PropertyHomeController>();

  @observable
  ObservableList<ImovelModel> imovelModels = ObservableList<ImovelModel>();

  @observable
  ObservableFuture<ObservableList<TipoAnuncioModel>> tipoAnuncios;

  @observable
  ObservableFuture<ObservableList<TipoImovelModel>> tipoImoveis;

  @observable
  ObservableFuture<ObservableList<TipoHospedagemModel>> tipoHospedagens;

  @observable
  ObservableFuture<ObservableList<ImagemModel>> imagens;

  @observable
  ObservableList<EnderecoModel> enderecos = ObservableList<EnderecoModel>();

  @observable
  ObservableFuture<ObservableList<ContatoModel>> contatos;

  @observable
  int value = 1;

  @observable
  String uf;

  @observable
  String cidade;

  @observable
  String bairro;

  @observable
  String categoria;

  @action
  setUf(value) => this.uf = value;

  @action
  setCidade(value) => this.cidade = value;

  @action
  setBairro(value) => this.bairro = value;

  @action
  setCategoria(value) => this.categoria = value;

  @computed
  String get getUf => this.uf;

  @computed
  String get getCidade => this.cidade;

  @computed
  String get getBairro => this.bairro;

  @computed
  String get getCategoria => this.categoria;

  List<String> getUfs() {
    List<String> ufs = List<String>();
    for (EnderecoModel item1 in propertyHomeController.enderecos.value) {
      bool add = true;
      for (var item in ufs) {
        if (item1.estado == item) {
          add = false;
          break;
        }
      }
      if (add) ufs.add(item1.estado);
    }
    return ufs;
  }

  List<String> getCidades() {
    List<String> cidades = List<String>();
    for (EnderecoModel item1 in propertyHomeController.enderecos.value) {
      if (item1.estado == this.uf) {
        bool add = true;
        for (var item in cidades) {
          if (item1.cidade == item) {
            add = false;
            break;
          }
        }
        if (add) cidades.add(item1.cidade);
      }
    }
    return cidades;
  }

  List<String> getBairros() {
    List<String> bairros = List<String>();
    for (EnderecoModel item1 in propertyHomeController.enderecos.value) {
      if (item1.estado == this.uf) if (item1.cidade == this.cidade) {
        bool add = true;
        for (var item in bairros) {
          if (item1.bairro == item) {
            add = false;

            break;
          }
        }
        if (add) {
          bairros.add(item1.bairro);
        }
      }
    }
    return bairros;
  }

  List<String> getCategorias() {
    List<String> tipoImoveiss = List<String>();
    // for (ImovelModel imovel in propertyHomeController.imovelModels.value) {
    //   for (EnderecoModel enderecoModel in enderecos) {
    //     if (imovel.endereco == enderecoModel.id) {
    //       for (TipoImovelModel tipoImovel
    //           in propertyHomeController.tipoImoveis.value) {
    //         if (imovel.tipoImovel == tipoImovel.id) {
    //           tipoImoveiss.add(tipoImovel.nome);
    //           break;
    //         }
    //         break;
    //       }
    //     }
    //   }
    // }
    return tipoImoveiss;
  }

  ObservableList<ImovelModel> getIMoveis() {
    this.imovelModels = ObservableList<ImovelModel>();
    for (ImovelModel imovel in propertyHomeController.imovelModels.value) {
      bool add = false;
      for (EnderecoModel endereco in propertyHomeController.enderecos.value) {

        if (endereco.id == imovel.endereco &&
            this.bairro == endereco.bairro &&
            endereco.cidade == this.cidade &&
            endereco.estado == this.uf) {
          add = true;
          break;
        }
      }
      if (add) {
        imovelModels.add(imovel);
      }
    }
    return imovelModels;
  }
}
