num add(num firstNumber, num secondNumber) {
  return firstNumber + secondNumber;
}

num sub(num firstNumber, num secondNumber) {
  return firstNumber - secondNumber;
}

num multiply(num firstNumber, num secondNumber) {
  return firstNumber * secondNumber;
}

num divide(num firstNumber, num secondNumber) {
  if (secondNumber == 0) {
    try {
      num result = firstNumber ~/ secondNumber;
    } catch (e) {
      print('Ошибка $e');
    } finally {
      print('На ноль делить нельзя!');
      return 0;
    }
  }
  return firstNumber / secondNumber;
}

void compareNumbers(num firstNumber, num secondNumber) {
  if (firstNumber > secondNumber) {
    print('$firstNumber > $secondNumber');
  } else {
    print('$firstNumber < $secondNumber');
  }
}

void main() {
  print(add(1, 2.47846));
  print(sub(1, 2.47846));
  print(multiply(1, 2.47846));
  print(divide(21, 5.1));
  compareNumbers(44.99999999099999, 44.999999991);
}
