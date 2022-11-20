void main(List<String> arguments) {
  String text = 'Хо4у 8ывести число-48, нажми RUUUUUUN';
  List lst1 = text.split(' '); // Разбивает предложение на лист слов
  int i = 0;
  var n;
  final RegExp firstRegExp = RegExp('(\[0-9]+)'); // Отфильтровывает буквы
  for (; i <= lst1.length - 1;) {
    n = firstRegExp.stringMatch(
        lst1[i]); // Оставляем лишь цифры, если цифр нет --> n = Null

    if (n is! Null) {
      // Костыль для того, чтобы можно было писать слова без цифр :)
      num m = num.parse(n);
      print(m);
    }
    i++;
  }
}
