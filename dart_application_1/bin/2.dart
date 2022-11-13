import "dart:io";

void main(List<String> arguments) {
//Ввод
  print("Введи число:");
  num n = num.parse(stdin.readLineSync()!);
  var str = '';
  var div = n ~/ 2; // Целая часть от деления
  var mod = n % 2; // Остаток от деления
  var i = 0;
  for (; div > 0;) {
    str += mod.toString();
    div = n ~/ 2;
    n = div;
    mod = n % 2;
  }
  print('Из 10-ой в 2-ую СС:');
  print(str.split('').reversed.join()); // Развернул строчку
}
