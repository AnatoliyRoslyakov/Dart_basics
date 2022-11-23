void main(List<String> args) {
  8.SqrtMetod(3); // <-- Корень  3-ей степени по основанию 8
}

extension on num {
  num abs(num n) {
    return n < 0 ? -n : n;
  }

  num? SqrtMetod(num rootDegree) {
    num eps = 0.00000000000000000000000000000000000001; //допустимая погрешность
    if (rootDegree == 0) {
      print('Невозможно вычислить корень данной степени');
    }
    num root = this / rootDegree; //начальное приближение корня
    num rn = this; //значение корня последовательным делением
    int countiter = 0; //число итераций

    while (abs(root - rn) >= eps) {
      rn = this;
      for (int i = 1; i < rootDegree; i++) {
        rn = rn / root;
      }
      root = 0.5 * (rn + root);
      countiter++;
    }
    print('Корень $rootDegree-степени  по основанию $this = $root');
  }
}
