// 1. Используется ли сокращение if-else до if в production?
// 2. Из-за этого уменьшается читаемость?
// 3. Уместно ли вообще такое сокращение?
// Или лучше использовать полную конструкцию if-else?

import 'package:homework4/days_week.dart';

bool isPositive(num number) {
  if (number < 0) {
    print('$number - отрицательное');
    return false;
  }
  print('$number - положительное');
  return true;
}

void printNumbers(List<int> list) {
  list.forEach((item) {
    print(item);
  });
}

void dayWeekDay1(int day) {
  switch (day) {
    case 1:
      print('Понедельник');
    case 2:
      print('Вторник');
    case 3:
      print('Среда');
    case 4:
      print('Четверг');
    case 5:
      print('Пятница');
    case 6:
      print('Суббота');
    case 7:
      print('Воскресенье');
    default:
      print('Дня недели с номером $day не существует!');
  }
}

void dayWeekDay2(int day) {
  if (day > 7) {
    print('Дня недели с номером $day не существует!');
    return;
  }
  // 1. Можно ли избавиться от null-safety? Или это особенность языка?
  print(daysWeekMap[day]?.name);
}

void main() {
  isPositive(-657);

  final List<int> list = [];
  for (int i = 1; i < 11; i++) {
    list.add(i);
  }
  printNumbers(list);

  dayWeekDay1(9);
  dayWeekDay2(9);
}
