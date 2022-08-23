part of 'imports.dart';

void programFunction(){
    print('--------INICIO DOS TESTES-------');
    csvFunction();
    tsvFunction();
    jsonFunction();
    xmlFunction();
  }

void csvFunction(){
  final test = CsvData();
  print('-----------CSV DATA---------');
  test.load('example_files/example_csv.csv');
  print('Separator: ${test.separator}\n');
  print('Test fields: ${test.fields}\n');
  print('Get data: ${test.data}\n');
  print('has data: ${test.hasData}\n');

  print('set data: "2045,"Leonardo Castro Lopes","leocalopes@email.com","21956482310","206.549.487-78"\n');
  test.data = '2045,"Leonardo Castro Lopes","leocalopes@email.com","21956482310"';
  print('Get data: ${test.data}\n');

  print('Test clear()');
  test.clear();
  print('has data: ${test.hasData}\n');
  print('Get data: ${test.data}\n');

  test.save('example_files/example_csv.csv');

}

void tsvFunction(){
  final test = TsvData();
  print('-----------TSV DATA---------');
  test.load('example_files/example_tsv.tsv');
  print('Separator: ${test.separator}\n');
  print('Test fields: ${test.fields}\n');
  print('Get data: ${test.data}\n');
  print('has data: ${test.hasData}\n');

  print('set data: "2045  "Leonardo Castro Lopes  "leocalopes@email.com"  "21956482310" "206.549.487-78"\n');
  test.data = '2045 "Leonardo Castro Lopes" "leocalopes@email.com"  "21956482310"';
  print('Get data: ${test.data}\n');

  print('Test clear()');
  test.clear();
  print('has data: ${test.hasData}\n');
  print('Get data: ${test.data}\n');

  test.save('example_files/example_tsv.tsv');
}

void jsonFunction(){
  final test = JsonData();
  print('-----------JSON DATA---------');
  test.load('example_files/example_json.json');
  print('Test fields: ${test.fields}\n');
  print('Get data: ${test.data}\n');
  print('has data: ${test.hasData}\n');

  print('set data: {"id": 2045, "name": "Leonardo Castro Lopes", "email": "leocalopes@email.com", "phone": "21956482310", "CPF": "206.549.487-78"}\n');
  test.data = '{"id": 2045, "name": "Leonardo Castro Lopes", "email": "leocalopes@email.com", "phone": "21956482310", "CPF": "206.549.487-78"}';
  print('Get data: ${test.data}\n');

  print('Test.clear()');
  test.clear();
  print('has data: ${test.hasData}\n');
  print('Get data: ${test.data}\n');

  test.save('example_files/example_json.json');
}

void xmlFunction(){
  final test = XmlData();
  print('-----------XML DATA---------');
  test.load('example_files/example_xml.xml');
  print('Test fields: ${test.fields}\n');
  print('Get data: ${test.data}\n');
  print('has data: ${test.hasData}\n');

  print('set data: <record id="7015" name="Roberto Carlos da Nóbrega" email="desouzaveras@email.com" phone="65930041685"/>\n');
  test.data = '<record id="7015" name="Roberto Carlos da Nóbrega" email="desouzaveras@email.com" phone="65930041685"/>';
  print('Get data: ${test.data}\n');

  print('Test.clear()');
  test.clear();
  print('has data: ${test.hasData}\n');
  print('Get data: ${test.data}\n');

  test.save('example_files/example_xml.xml');
  
}
