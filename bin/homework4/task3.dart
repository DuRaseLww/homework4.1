void replaceNulls(List<int?> list) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == null) {
      list.removeAt(i);
      list.insert(i, 0);
    }
  }
}

// 1. Есть вариант решения с ??= ?

void main() {
  List<int?> list = [null, null, 0, 5, 675, 24, 917, null, null];
  replaceNulls(list);
  print(list.toString());
}
