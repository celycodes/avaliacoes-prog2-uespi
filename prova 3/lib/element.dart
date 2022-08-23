class Element {
  String symbol, name, latinName;
  int weight;

  Element({required this.symbol, required this.name, required this.latinName, required this.weight});

  @override
  String toString() => symbol;
}
