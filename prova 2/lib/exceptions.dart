part of 'imports.dart';

class Exceptions {

  @override
  String toString() => 'Exception Error';

  String get message => toString();
  }

class FileNotFound extends Exceptions{

  @override
  String toString() => 'File Not Found';
}

class MissingFileFieldName extends Exceptions{

  @override
  String toString() => 'Missing File Field Name';
}

class InvalidCsvDataFormat extends Exceptions {
  
  @override
  String toString() => 'Invalid Csv Data Format';
  }

class InvalidTsvDataFormat extends Exceptions {
  
  @override
  String toString() => 'Invalid Tsv Data Format';
  }

class InvalidJsonDataFormat extends Exceptions {
  
  @override
  String toString() => 'Invalid Json Data Format';
  }
