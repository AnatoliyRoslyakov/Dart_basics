void main() {
  var wordsList = ['привет', 'пока', 'привет', 'привет', 'привет', 'пока'];
  // Строка в лист
  // Возврат индекса строки
  List<num> findNumsIn(String string) {
    List<String> words = string.split(" ");
    List<num> numsList = [];
    for (var word in words) {
      num? number = int.tryParse(word);
      if (number != null) {
        numsList.add(number);
      }
    }
    return numsList;
  }

  Map<String, int> findStringsIn(List<String> stringList) {
    final map = <String, int>{};
    for (var word in stringList) {
// Если встречается одинаковый ключ в массиве, то его значение +1, если нет -- 1
      map[word] = map[word] != null ? map[word]! + 1 : 1;
    }

    return map;
  }

  print('Вхождения слов в коллекцию: ${findStringsIn(wordsList)}');
}
