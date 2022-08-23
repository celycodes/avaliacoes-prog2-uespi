import 'dart:io';
import 'package:prova_3_prog2/element.dart';

class Elements extends Iterable {
  final List<Element> component = [];
  final table = File('bin/elementes.csv').readAsLinesSync();

  // construtor
  Elements() {
    for (var i = 1; i < table.length; i++) {
      var elem = table[i].split(',');
      final aux = Element(
          symbol: elem[1],
          name: elem[2],
          latinName: elem[3],
          weight: int.parse(elem[0]));
      component.add(aux);
    }
  }
  @override
  Iterator<Element> get iterator => component.iterator;
}


