part of 'imports.dart';

abstract class Data {
  
  late String content;

  void load(String fileName);

  void save(String fileName);

  void clear();

  bool get hasData;

  String? get data;

  set data(String? receivedData);

  List<String> get fields;

}
