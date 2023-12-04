import 'dart:async';

class Calculator {
  double add(double a, double b) {
    return a + b;
  }

  double subtract(double a, double b) {
    return a - b;
  }

  double multiply(double a, double b) {
    return a * b;
  }

  double divide(double a, double b) {
    if (b == 0) {
      throw ZeroDivisionError('Cannot divide by zero');
    }
    return a / b;
  }
}

ZeroDivisionError(String s) {}

void main() {
  Calculator calculator = Calculator();
  double result;

  try {
    result = calculator.divide(
        10, 2); // You can change the numbers here based on user input
  } catch (e) {
    print('Error: $e');
    return;
  }

  Future.delayed(const Duration(seconds: 5), () {
    print('Result: $result');
  });
}
