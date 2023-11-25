void main() {
  List<int> numbers = [75, 80, 85, 90, 95];

  print('Maximum number: ${findMaximum(numbers)}');
  print('Minimum number: ${findMinimum(numbers)}');
  print('Sum of all numbers: ${calculateSum(numbers)}');
  print('Average of all numbers: ${calculateAverage(numbers)}');
}

int findMaximum(List<int> numbers) {
  int max = numbers[0];
  for (int number in numbers) {
    if (number > max) {
      max = number;
    }
  }
  return max;
}

int findMinimum(List<int> numbers) {
  int min = numbers[0];
  for (int number in numbers) {
    if (number < min) {
      min = number;
    }
  }
  return min;
}

int calculateSum(List<int> numbers) {
  int sum = 0;
  for (int number in numbers) {
    sum += number;
  }
  return sum;
}

double calculateAverage(List<int> numbers) {
  int sum = calculateSum(numbers);
  return sum / numbers.length;
}
