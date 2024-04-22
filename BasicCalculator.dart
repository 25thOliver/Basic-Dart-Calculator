import 'dart:io';


double numberInput()
{
  print("Enter number for computation: ");
  double number = double.parse(stdin.readLineSync()!);
  return number;
}

String signOfOperation()
{
  print("Enter the operator (+, -, /, *, %)");
  String operator = stdin.readLineSync()!;
  return operator;
}

void main()
{
  print("My First Simple Calculator in Dart");
  print("________________________________________");

  double num1 = numberInput();
  double num2 = numberInput();
  String operatorSign = signOfOperation();
  double answer = 0.0;

  switch(operatorSign)
  {
    case'+':
        answer = num1 + num2;
        print("$num1 + $num2 = $answer");
        break;
    case'-':
        answer = num1 - num2;
        print("$num1 - $num2 = $answer");
        break;
    case'/':
        answer = num1 / num2;
        print("$num1 / $num2 = $answer");
        break;
    case'*':
        answer = num1 * num2;
        print("$num1 * $num2 = $answer");
        break;
    case'%':
        answer = num1 % num2;
        print("$num1 % $num2 = $answer");
        break;
    default:
        print("Invalid choice! Please try again.");
        break;

  }
}