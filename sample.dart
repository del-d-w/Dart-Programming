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


----------------------------------------------------------------------------------------------
Type Conversion
-----------------------------------------------------------------------------------------------
  
  void main() {
  //Converting String to Integer
  String num="10";
  int num1=int.parse(num);
  print(num1);
  print(num1.runtimeType); //checking data type
  
  //Integer to String
  int a=20;
  String a1=a.toString();
  print(a1);
  print(a1.runtimeType);
  
  // Strint to double
  String dnum="10.98";
  double dnum1=double.parse(dnum);
  print(dnum1);
  print(dnum1.runtimeType);
  
  // double to String
  double dString=10.98;
  String dString1=dString.toString();
  print(dString1);
  print(dString1.runtimeType);
  
  //Integer to double
  int inputInt=10;
  double intToDouble=inputInt.toDouble();
  print(intToDouble);
  print(intToDouble.runtimeType);
  
  // double to integer
  double doubleValue = 3.14;
  int intValue = doubleValue.toInt();
  print(intValue);
  print(intValue.runtimeType);
  
  //String to bool
  String str = "true";
  bool b = bool.fromEnvironment(str);
  print(b);
  print(b.runtimeType);
  
  // bool to String
  bool b1 = true;
  String s = b1.toString();
  print(s);
  print(s.runtimeType);
}
