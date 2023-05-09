Running dart file in Visual studio code
dart sample.dart

------------------------------------------------------------
  Taking input from user
------------------------------------------------------------

  import 'dart:io';

//Taking input from user


void main() {
  //for string
  stdout.write('Enter your name: ');
  String name = stdin.readLineSync()!;
  print(name);
  print(name.runtimeType);
  // for number
  stdout.write('Enter a integer number: ');
  int numberInt = int.parse(stdin.readLineSync()!);
  print(numberInt);
  print(numberInt.runtimeType);
  // for double
  stdout.write('Enter a float number: ');
  double numberDouble = double.parse(stdin.readLineSync()!);
  print(numberDouble);
  print(numberDouble.runtimeType);
  // for boolean
  stdout.write('Enter a float boolean: ');
  bool boolInput=bool.fromEnvironment(stdin.readLineSync()!);
  print(boolInput);
  print(boolInput.runtimeType);
  //for List
  stdout.write("Enter a list with space: ");
  String Lista = stdin.readLineSync()!; 
  List<dynamic> inputList=Lista.split(" ");
  print(inputList);
  print(inputList.runtimeType);
}
