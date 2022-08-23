part of 'imports.dart';

class JsonData extends Data {
  dynamic dataJson = [];

  void load(String fileName) {
    content = File(fileName).readAsStringSync();
    dataJson = (jsonDecode(content));
  }

  void save(String fileName) {
    JsonEncoder encoder = JsonEncoder.withIndent('\t');
    File(fileName).writeAsStringSync(encoder.convert(dataJson));
  }

  void clear() {
    dataJson.clear(); 
    hasData;
  }

  bool get hasData => dataJson.isNotEmpty;

  String? get data => hasData ? dataJson.toString() : null;

  set data(String? receivedData) {
    if (receivedData != null) {
      try {
        if (jsonDecode(receivedData) is! Map) {
          throw InvalidJsonDataFormat();
        }
        else{
          dataJson.insert(dataJson.length, jsonDecode(receivedData));
        }
      } catch (e) {
        throw InvalidJsonDataFormat();
      }
    }
    else{
      dataJson.insert(dataJson.length, {});
    }
  }

  List<String> get fields => hasData ? dataJson[0].keys.toList() : [];
}
