import 'package:hive_flutter/adapters.dart';
import 'package:notepad/model/my_name_model.dart';

class HomeScreenController {
  final Box<MyNameModel> _noteBox = Hive.box('testBox');

  Future<List<MyNameModel>> loadEvents() async {
    return _noteBox.values.toList();
  }

  Future<void> addEvent(MyNameModel event) async {
    await _noteBox.add(event);
  }

  Future<void> deleteEvent(int index) async {
    await _noteBox.deleteAt(index);
  }

  Future<void> updateEvent(int index, MyNameModel updatedNote) async {
    await _noteBox.putAt(index, updatedNote);
  }
}
