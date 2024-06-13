import 'dart:io';
import 'dart:math';

main() {
  print(
      'This program allows the user to make calculation using the math functio.');
  print(
      '=======================================================================');
  print(" ");
  print('Note: you only have 3 attempts!');
  print(" ");
  print('If you want to calculate a random between two numbers, press 1.');
  print('If you want to calculate the power of a number, press 2.');
  print('If you want to calculate the square root of a number, press 3.');
  print('If you want to find the maximum between two numbers, press 4.');
  print('If you want to find the minimum between two numbers, press 5.');
  var num = stdin.readLineSync();
  var numConverted = int.parse(num ?? '0');
  for (int a = 1; a <= 3; a++) {
    if (numConverted == 1) {
      print('Please enter minimum number:');
      var min = stdin.readLineSync();
      var minConverted = int.parse(min ?? '0');
      print('Please enter maximum number:');
      var max = stdin.readLineSync();
      var maxConverted = int.parse(max ?? '0');
      int rand =
          minConverted + Random().nextInt(maxConverted + 1) - minConverted;
      print('The random number between $min and $max is $rand');
      break;
    } else if (numConverted == 2) {
      print('Please enter the number:');
      var num1 = stdin.readLineSync();
      var num1Converted = int.parse(num1 ?? '0');
      print('Please enter the exponet:');
      var num2 = stdin.readLineSync();
      var num2Converted = int.parse(num2 ?? '0');
      var power = pow(num1Converted, num2Converted);
      print(
          'The power of $num1Converted raised to the power of $num2Converted is $power');
      break;
    } else if (numConverted == 3) {
      print('Please enter a number to get teh square root of it:');
      var num1 = stdin.readLineSync();
      var num1Converted = int.parse(num1 ?? '0');
      var squareRoot = sqrt(num1Converted);
      print('The square root of $num1Converted is $squareRoot');
      break;
    } else if (numConverted == 4) {
      print('Please enter the first number:');
      var num1 = stdin.readLineSync();
      var num1Converted = int.parse(num1 ?? '0');
      print('Please enter the second number:');
      var num2 = stdin.readLineSync();
      var num2Converted = int.parse(num2 ?? '0');
      var maximum = max(num1Converted, num2Converted);
      print(
          'The maximum number between $num1Converted and $num2Converted is $maximum');
      break;
    } else if (numConverted == 5) {
      print('Please enter the first number:');
      var num1 = stdin.readLineSync();
      var num1Converted = int.parse(num1 ?? '0');
      print('Please enter the second number:');
      var num2 = stdin.readLineSync();
      var num2Converted = int.parse(num2 ?? '0');
      var minimum = min(num1Converted, num2Converted);
      print(
          'The maximum number between $num1Converted and $num2Converted is $minimum');
      break;
    } else if (numConverted < 1 || numConverted > 5) {
      if (a == 3) {
        print("Your three attempts failled!");
        break;
      }
      print('Attempt $a failled!');
      print('The number you entered is not in the range between 1 and 5');
      print('Please enter a number once again');
      num = stdin.readLineSync();
      numConverted = int.parse(num ?? '0');
    }
  }
}
