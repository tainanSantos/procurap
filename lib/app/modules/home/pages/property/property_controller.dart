import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/home/repository/imovel_repository.dart';
import 'package:procurap/app/shared/models/imovel_model.dart';

part 'property_controller.g.dart';

@Injectable()
class PropertyController = _PropertyControllerBase with _$PropertyController;

abstract class _PropertyControllerBase with Store {
  @observable
  ObservableFuture<ObservableList<ImovelModel>> imovelModels;


  final ImovelRepository imovelRepository;

  _PropertyControllerBase(this.imovelRepository) {
    this.imovelModels = this.imovelRepository.findAll().asObservable();
  }
  
}
