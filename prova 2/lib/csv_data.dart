part of 'imports.dart';

class CsvData extends DelimitedData {

  void load(String fileName) {
    content = File(fileName).readAsStringSync();
  }

  void save(String fileName) {
    final oldFile = lines.toString().replaceAll('[', '').replaceAll(']', '');
    File(fileName).writeAsStringSync(oldFile);
  }

  void clear() {
    lines.clear();
    hasData;
  }

  bool get hasData => lines.isNotEmpty;

  String get separator => ',';

  String? get data => hasData ? lines.toString() : null;

  set data(String? receivedData) {
    if (receivedData != null) {
      try {
        lines.insert(lines.length, receivedData);
      } catch (e) {
        throw InvalidCsvDataFormat;
      }
    }
    else{
      lines.insert(lines.length, 'null');
    }
    }

    List<String> get fields => hasData ? lines[0].split(separator) : [];
}
