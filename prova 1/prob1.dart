// Celenny Cristhyne e Richelle Kim
import 'dart:math';

class Pg {
  double a1; // primiero termo da pg
  double q; // razao

  // construtor
  Pg([this.a1=0, this.q=0]);

  // Termo da Pg
  double termPg(double n) {
    // an = a1 * q ^ (n-1) [representação]
    return a1 * pow(q, n-1);
  }

  @override
  String toString() {
    return 'an: ${a1} * ${q} ^ (n - 1)';
  }

  // Soma dos dos n primeiros termos da PG
  double sumTermsPg(int n) {
    // sn = a1 * ((1 - q^n) / (1 - q))
    double sn = a1 * ((1 - pow(q, n))/(1 - q));
    return sn;
  }
}

main() {
  // 2 (primeiro termo da pg) | 3 (razao)
  Pg a2 = Pg(2, 3);
  print(a2.termPg(2)); // segundo termo da pg
  print(a2.sumTermsPg(3)); // somar 3 termos da pg
  print(a2.toString());
}