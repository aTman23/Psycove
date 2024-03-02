import 'package:hive/hive.dart';

class LocalDatabase {
  Map<String, dynamic> data = {};
  final db = Hive.box("userData");

  void loadData() {
    data = db.get("UserData");
  }

  void updateData() {
    db.put("UserData", data);
  }
}

LocalDatabase localDatabase = LocalDatabase();
