void main(List<String> args) {
  var wordsList = ['a', 'b', 'a', 'a', 'one', 'one', 'one', 'three', 'six'];
  // Строка в лист
  // Возврат индекса строки
  List<num> findNumsIn(String string) {
    List<String> words = string.split(" ");
    List<num> numsList = [1245656];
    for (var word in words) {
      num? number = int.tryParse(word);
      if (number != null) {
        numsList.add(number);
      }
    }
    print(numsList);
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
