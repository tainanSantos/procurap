import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/home/repository/imagem_repository.dart';

part 'gallery_controller.g.dart';

@Injectable()
class GalleryController = _GalleryControllerBase with _$GalleryController;

abstract class _GalleryControllerBase with Store {
  final ImagemRepository imagemRepository;

  @observable
  int _idImovel;

  @observable
  ObservableList<String> urls;

  _GalleryControllerBase(this.imagemRepository);

  @action
  setIsImovel(value) => this._idImovel = value;

  @computed
  int get getIdImovel => this._idImovel;
}
