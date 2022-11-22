void main(List<String> args) {
  var wordsList = ['a', 'b', 'a', 'a', 'one', 'one', 'one', 'three', 'six'];
  Set<int> findNumNamesIn(List<String> stringList) {
    const intNames = {
      'one': 1,
      'two': 2,
      'three': 3,
      'four': 4,
      'five': 5,
      'six': 6,
      'seven': 7,
      'eight': 8,
      'nine': 9
    };

    final set = <int>{};
    for (var word in stringList) {
      if (intNames[word] != null) {
        set.add(intNames[word]!);
      }
    }
    return set;
  }

  print('Цифры без повторений в коллекции: ${findNumNamesIn(wordsList)}');
}
