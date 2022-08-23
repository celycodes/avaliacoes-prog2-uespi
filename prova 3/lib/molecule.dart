class Molecule implements Comparable {
  late String _formula;
  String name;
  final List<Map<String, int>> _table = [];

  Molecule({required formula, required this.name}) {
    if (formula == null) {
      throw Exception('Valor nulo');
    }
    _formula = formula;
  }

  set formula(String form) {
    final regex = RegExp('([A-Z][a-z]?)([0-9]*)');
    if (regex.hasMatch(form)) {
      _formula = form;
      print(_formula);
    } else {
      throw Exception('Molecula invalida');
    }
  }

  String get formula => _formula;

  set weight (String form) {

  }

  @override
  int compareTo(other) {
    // TODO: implement compareTo
    throw UnimplementedError();
  }
}


