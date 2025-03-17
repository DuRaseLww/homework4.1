// 1. Насколько я понимаю для оптимизации работы AndroidOS и IOS используются
//    константы, то я решил использовать enum. Насколько часто используется
//    enum в реальной разработке?

enum DaysWeek { monday, tuesday, wednesday, thursday, friday, saturday, sunday }

extension daysWeekNameExtension on DaysWeek {
  String get name {
    switch (this) {
      case DaysWeek.monday:
        return 'Понедельник';
      case DaysWeek.tuesday:
        return 'Вторник';
      case DaysWeek.wednesday:
        return 'Среда';
      case DaysWeek.thursday:
        return 'Четверг';
      case DaysWeek.friday:
        return 'Пятница';
      case DaysWeek.saturday:
        return 'Суббота';
      case DaysWeek.sunday:
        return 'Воскресенье';
    }
  }
}

Map<int, DaysWeek> daysWeekMap = {
  1: DaysWeek.monday,
  2: DaysWeek.tuesday,
  3: DaysWeek.wednesday,
  4: DaysWeek.wednesday,
  5: DaysWeek.friday,
  6: DaysWeek.saturday,
  7: DaysWeek.sunday,
};
