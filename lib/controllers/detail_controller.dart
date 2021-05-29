import '../models/stuff_model.dart';
import '../repositories/stuff_repository.dart';

class DetailController {
  final StuffRepository _repository;

  DetailController(this._repository);

  int id;
  String photo = '';
  String description = '';
  String name = '';
  String date = '';
  String telephone = '';

  setId(int value) => id = value;
  setPhoto(String value) => photo = value;
  setDescription(String value) => description = value;
  setName(String value) => name = value;
  setDate(String value) => date = value;
  setTelephone(String value) => telephone = value;

  Future save() async {
    final stuff = StuffModel(
      id: id,
      photoPath: photo,
      description: description,
      contactName: name,
      date: date,
      telephone: telephone,
    );

    if (id == null) {
      await _repository.create(stuff);
    } else {
      await _repository.update(stuff);
    }
  }
}
