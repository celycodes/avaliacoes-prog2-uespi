part of 'imports.dart';

abstract class DelimitedData extends Data{
  
  late final lines = content.split('\n');

  String get separator;
  
} 
