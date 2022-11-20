import "dart:io";
import 'dart:math';

void main(List<String> arguments) {
  print("Введи ДЕСЯТИЧНОЕ число:");
  num n1 = num.parse(stdin.readLineSync()!);
  var str = '';
  var i = 0;
  List<int> listI = []; // Под номер итерации
  List listStr = []; // Под формирование двоичного значения
  var div = n1 ~/ 2; // Целая часть от деления
  var mod = n1 % 2; // Остаток от деления
  for (; div > 0;) {
    str += mod.toString(); // Для вывода в терминал
    listStr.add(pow(2, i) * mod); // Для обратного перевода в 10-ю
    div = n1 ~/ 2;
    n1 = div;
    mod = n1 % 2;
    i++;
  }
  // Разворот строки для корректного представления числа
  var strRev = str.split('').reversed.join();

  var sum = listStr.reduce((a, b) => a + b);
  print('Из 10 --> 2 СС: $strRev');
  print('Из 2 --> 10 СС: $sum');
}
  // Реализовать метод перевода из 2 --> 10 получилось на основе перевода
  // из 10 --> 2 :) Пока писал, думал что выплыву во что-то дельное,
  // а по сути реализовал только математику метода.

