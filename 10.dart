import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  if (isFibonacci(number)) {
    print("$number is a Fibonacci number.");
  } else {
    print("$number is not a Fibonacci number.");
  }
}

bool isFibonacci(int num) {
  if (num < 0) {
    return false; 
  }

  int a = 0;
  int b = 1;

  while (a < num) {
    int temp = a;
    a = b;
    b = temp + b;
  }

  return a == num;
}
