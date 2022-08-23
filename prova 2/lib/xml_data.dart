part of 'imports.dart';

class XmlData extends Data {
  Map<String, dynamic> mapRecord = {};

  @override
  void load(xmlfile) {
    content = File(xmlfile).readAsStringSync(); // lendo o arquivo
    final xmlDoc = XmlDocument.parse(content);
    final records = xmlDoc.findAllElements('record');
    for (XmlElement record in records) {
      for (var element in record.attributes) {
        mapRecord[element.name.toString()] = element.value;
      }
    }
  }

  void save(xmlFile) {}

  void clear() {
    mapRecord.clear();
    hasData;
    }

  bool get hasData => mapRecord.isNotEmpty;

  String? get data => hasData ? mapRecord.toString() : null;

  set data(String? value) => throw UnimplementedError();

  List<String> get fields => hasData ? mapRecord.keys.toList() : [];

}