import "dart:io";

void main() {
  print("Введи первое число:");
  num n1 = num.parse(stdin.readLineSync()!);
  print("Введи второе число:");
  num n2 = num.parse(stdin.readLineSync()!);
  var mn;
  var mx;

  if (n1 >= n2) {
    // Присвоение max/min значений
    mn = n2;
    mx = n1;
  } else if (n1 < n2) {
    mn = n1;
    mx = n2;
  }

  num b = mx % mn; // Последующее число -- остаток от деления предыдущих

  if (b == 0) {
    //Костыль для случая, если меньшее выбранное число является НОД
    print('Наибольший общий делитель: $mn');

    num l = n1 * n2 / mn; //НОК = a*b/НОД(a,b)
    print('Наименьшее общее кратное: $l');
  } else {
    for (; b == 0;) {
      num b = mx % mn;
      mx = mn;
      mn = b;
    }
    print('Наибольший общий делитель: $b');

//НОК = a*b/НОД(a,b)
    num l = mx * mn / b;
    print('Наименьшее общее кратное: $l');
  }
}
