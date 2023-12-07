import '../model/flowers.dart';
import '../reponsitory/repository.dart';

class FlowerController {
  final Repository _repository;

  FlowerController(this._repository);

  // get
  Future<List<Flower>> fetchFlowerData() async {
    return _repository.getFlowerData();
  }
}
