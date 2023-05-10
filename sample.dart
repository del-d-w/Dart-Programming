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

-----------------------------------------------------------------------------------
String Methods
https://api.dart.dev/stable/3.0.0/dart-core/String-class.html
-----------------------------------------------------------------------------------


void main() {
  //  1. length:  Returns the length of the string.
  String name="Hello World";
  print(name.length);
  
  // 2. isEmpty: Returns true if the string is empty.
  print(name.isEmpty);
  
  //  3.isNotEmpty:  Returns true if the string is not empty.
  print(name.isNotEmpty);
  
  //  4. toUpperCase: Returns a new string with all characters converted to uppercase.
  print(name.toUpperCase());
  
  //  5. toLowerCase: Returns a new string with all characters converted to lowercase.
  print(name.toLowerCase());
  
  //  6. trim: Returns a new string with all whitespace characters removed from the beginning and end of the string.
  String name1="            Hello world         ";
  print(name1.trim());
  
  //  7. trimLeft: Returns a new string with all whitespace characters removed from the beginning of the string.
  print(name1.trimLeft());
  
  //  8. trimRight: Returns a new string with all whitespace characters removed from the end of the string.
  print(name1.trimRight());
  
  // 9.replaceFirst: Returns a new string with the first occurrence of a specified substring replaced with another substring.
  print(name.replaceFirst('l', 'L'));
  
  //  10. replaceAll: Returns a new string with all occurrences of a specified substring replaced with another substring.
  String str = 'Hello, World!';
  String newStr = str.replaceAll(',', '-');
  print(newStr);
  String str1 = 'Dart is awesome!';
  String newStr1 = str1.replaceAll(RegExp('[aeiou]'), '*');
  print(newStr1); // Output: D*rt *s *w*sm*
  
  //  11. substring: Returns a new string containing a specified portion of the original string.
  print(name.substring(0,5));
  
  //  12. split: Returns a list of substrings obtained by splitting the original string at the occurrences of a specified delimiter.
  String str2 = 'one,two,three,four,five';
  List<String> splitstrings = str2.split(',');
  print(splitstrings); // Output: [one, two, three, four, five]
  
  // 13. compareTo: Compares this string to another string lexicographically.
  String cname1="Hello";
  String cname2="Hi";
  print(cname1.compareTo(cname2));
  
  // 14. contains: Returns true if the string contains the specified substring.
  print(name.contains("He"));
  
  // 15. startsWith: Returns true if the string starts with the specified prefix.
  print(name.startsWith("He"));
  
  // 16. endsWith: Returns true if the string ends with the specified suffix.
  print(name.endsWith("He"));
  
  // 17. indexOf: Returns the index of the first occurrence of the specified substring, or -1 if the substring is not found.
  print(name.indexOf("e"));
  
  // 18.lastIndexOf: Returns the index of the last occurrence of the specified substring, or -1 if the substring is not found.\
  print(name.lastIndexOf("l"));
  
  // 19. padLeft: Returns a new string padded with a specified character or string on the left side until a specified length is reached.
  print(name.padLeft(15));   // "   Hello World"
  print(name.padLeft(12, 'x'));   // "xxxxHello World"
  print(name.padLeft(20, 'y'));   // "yyyyyyyyHello World"
  
  // 20. padRight: Returns a new string padded with a specified character or string on the right side until a specified length is reached.
  print(name.padRight(15));
  print(name.padRight(12, 'x'));  
  print(name.padRight(20, 'y')); 
  
  // 21. codeUnits: is a property of a Dart String object that returns an unmodifiable list of the UTF-16 code units of the string. Each character in a string is represented by one or more code units, which are 16-bit unsigned integers.
  String codeName = "Hello";
  // Returns the 16-bit UTF-16 code unit at the given index.
  print(codeName.codeUnitAt(0)); //72
  List<int> codeUnits = codeName.codeUnits;
  print(codeUnits); // Output: [72, 101, 108, 108, 111]
  
  // 22. hashCode: is a property of a Dart String object returns a hash code that is derived from the code units of the string. This hash code is used to compare two strings for equality.
  //  value of a string is calculated based on its content and memory address, so it can vary between different executions of the same program or even between different instances of the same string in memory.
  String hashName1 = "Hello";
  String hashName2 = "World";
  int hash1 = hashName1.hashCode;
  int hash2 = hashName2.hashCode;
  print(hash1); // Output: 2146985185
  print(hash2); // Output: 2147097345
  
  // 23. runes property of a string in Dart returns an iterable of Unicode code points of that string. A code point is a numerical value that represents a single abstract character in the Unicode standard.
   String rname = "Hello";
  Iterable<int> rcodePoints = rname.runes;
  print(rcodePoints); // (72, 101, 108, 108, 111)
  for (int codePoint in rcodePoints) {
    print("Code point: $codePoint");
  }
  print(rcodePoints.toList());
  
  // 24. multiline strings
  String mL1='''
A
multiline
string
''';
String mL2="""
Another
multiline
string
""";
print(mL1);
print(mL2);
  
// 25. concatenating strings
String cstr1 = "Hello";
String cstr2 = "World";
String concatenatedString = cstr1 + " " + cstr2;
print(concatenatedString);
// Adjacent string literals are concatenated automatically:
const astring = 'Dart ' 'is ' 'fun!';
print(astring); // 'Dart is fun!'
// You can also use string interpolation for concatenating like this:
String ccstr1 = "Hello";
String ccstr2 = "World";
String cconcatenatedString = "$ccstr1 $ccstr2";
print(cconcatenatedString);
const stringI = 'dartlang';
print('$stringI has ${stringI.length} letters');
  
// 26. allMatches method is used to find all occurrences of a regular expression in a string and returns an iterable of matches.
RegExp pattern = RegExp(r'\d+');
String text = 'The price of an item is 10 dollars and the tax is 2 dollars.';
Iterable<Match> matches = pattern.allMatches(text);
print(matches); //(Instance of '_RegExpMatch', Instance of '_RegExpMatch')
for (Match m in matches) {
  print(m.group(0));
  // 10
  // 2
}
RegExp exp = RegExp(r'(\w+)');
var strALM = 'Dash is a bird';
Iterable<Match> matches1 = exp.allMatches(strALM, 8);
print(matches1); // (Instance of '_RegExpMatch', Instance of '_RegExpMatch')
for (final Match m in matches1) {
  String match = m[0]!;
  print(match);
  // a
  // bird
}
  
// 27. matchAsPrefix method in Dart's RegExp class matches the pattern against the beginning of the input string and returns a Match object if the pattern matches, otherwise returns null.
  String input = "Hello, world! This is a test.";
  RegExp pat = RegExp(r'\w+');
  Match? matchp = pat.matchAsPrefix(input);
  print(matchp); // Instance of '_RegExpMatch'
  if (matchp != null) {
    print("Match found: ${matchp.group(0)}"); // Output: Match found: Hello
  } else {
    print("No match found");
  }
  final string = 'Dash is a bird';

  var regExp = RegExp(r'bird');
  var match = regExp.matchAsPrefix(string, 10);
  print(match); //Instance of '_RegExpMatch'
  if (match != null) {
  print(match.group(0)); // Output: bird
  } 
  else {
  print("No match");
  }
  
  
// 28. replaceAllMapped: is a method in Dart's String class that replaces all occurrences of a Pattern in the string by a computed replacement String

  String rpstr = "Hello World";
String rpnewStr = rpstr.replaceAllMapped(
  RegExp("[ol]"), // Pattern to match
  (Match m) {
    if (m.group(0) == "o") {
      return "0"; // Replace "o" with "0"
    } else {
      return "1"; // Replace "l" with "1"
    }
  }
);
print(rpnewStr); // Output: H1e00 W0r1d

 String phrase = "I have a dog, you have a dog, everyone has a dog.";
  String result = phrase.replaceAllMapped(
    RegExp(r'dog'),
    (Match m) => 'big dog'
  );
  print(result); // "I have a big dog, you have a big dog, everyone has a big dog."


  String pigLatin(String words) => words.replaceAllMapped(
    RegExp(r'\b(\w*?)([aeiou]\w*)', caseSensitive: false),
    (Match m) => "${m[2]}${m[1]}${m[1]!.isEmpty ? 'way' : 'ay'}");

final res= pigLatin('I have a secret now!');
print(res); // 'Iway avehay away ecretsay ownay!'

//29. replaceFirstMapped: replaceFirstMapped is a method in Dart's String class that allows you to replace the first occurrence of a pattern in a string with a computed string.
final String rfinput = 'hello world';
  final Pattern rfpattern = RegExp(r'o');
  final String output = rfinput.replaceFirstMapped(rfpattern, (match) {
    return match.group(0)!.toUpperCase();
  });
  print(output); // 'hellO world'

const rfstring = 'Dart is fun';
print(rfstring.replaceFirstMapped(
    'fun', (m) => 'open source')); // Dart is open source

print(rfstring.replaceFirstMapped(
    RegExp(r'\w(\w*)'), (m) => '<${m[0]}-${m[1]}>')); // <Dart-art> is fun

// 30. replaceRange: is a method in Dart's String class that replaces a range of characters in a string with a new substring

String greeting = "Hello, world!";
  String newGreeting = greeting.replaceRange(0, 5, "Hi");
  print(newGreeting); // Output: "Hi, world!"

  const stringrr = 'Dart is fun';
  final resultrr = stringrr.replaceRange(8, null, 'open source');
  print(resultrr); // Dart is open source

  // 31. splitMapJoin: is a method in Dart's String class that can be used to split a string into parts, apply a mapping function to each part, and then join the results back together into a new string.
  final smresult = 'Eats shoots leaves'.splitMapJoin(RegExp(r'shoots'),
  onMatch: (m) => '${m[0]}', // (or no onMatch at all)
  onNonMatch: (n) => '*');
  print(smresult); // *shoots*

  final sstring = 'Dart is fun';
  final sresult = sstring.splitMapJoin(
    'is',
    onMatch: (match) => '(${match.group(0)})',
    onNonMatch: (n) => n);
  print(sresult); // Dart (is) fun
}


-------------------------------------------------------------------------------------------
  Number Methods
  https://api.dart.dev/stable/dart-core/num-class.html
-------------------------------------------------------------------------------------------
  
  void main() {
/*1. hashCode: Returns a hash code for a numerical value.
The hash code is compatible with equality. It returns the same value for an int and a double with the same numerical value, and therefore the same value for the doubles zero and minus zero.
No guarantees are made about the hash code of NaN values 
int get hashCode;
*/
  final myNumber = 42;
  print(myNumber.hashCode); // 487242

/* 2. isFinite: Returns a true or false
  Whether this number is finite.
  The only non-finite numbers are NaN values, positive infinity, and negative infinity. All integers are finite.
  All numbers satisfy exactly one of isInfinite, isFinite and isNaN.
  bool get isFinite;*/

  final a = 5;
  final b = double.infinity;
  final c = double.nan;

  print(a.isFinite); // true
  print(b.isFinite); // false
  print(c.isFinite); // false

/* 3. isInfinite: Returns a true or false
Whether this number is positive infinity or negative infinity.
Only satisfied by double.infinity and double.negativeInfinity.
All numbers satisfy exactly one of isInfinite, isFinite and isNaN.
bool get isInfinite;
*/

  final a1 = 5;
  final b1 = double.infinity;
  final c1 = double.nan;

  print(a1.isInfinite); // false
  print(b1.isInfinite); // true
  print(c1.isInfinite); // false

/* 4. isNaN: Returns a true or false
Whether this number is a Not-a-Number value.
Is true if this number is the double.nan value or any other of the possible double NaN values. Is false if this number is an integer, a finite double or an infinite double (double.infinity or double.negativeInfinity).
All numbers satisfy exactly one of isInfinite, isFinite and isNaN.
bool get isNaN;
*/
  final a2 = 5;
  final b2 = double.infinity;
  final c2 = double.nan;

  print(a2.isNaN); // false
  print(b2.isNaN); // false
  print(c2.isNaN); // true

/* 5. isNegative: Returns a true or false
Whether this number is negative.
A number is negative if it's smaller than zero, or if it is the double -0.0. This precludes a NaN value like double.nan from being negative.
bool get isNegative;
*/
  final a3 = -5;
  final b3 = double.infinity;
  final c3 = double.nan;
  final d3=5;

  print(a3.isNegative); // true
  print(b3.isNegative); // false
  print(c3.isNegative); // false
  print(d3.isNegative); // false

  /* 6. sign: Returns a vaue 1, -1, 0
Negative one, zero or positive one depending on the sign and numerical value of this number.
The value minus one if this number is less than zero, plus one if this number is greater than zero, and zero if this number is equal to zero.
Returns NaN if this number is a double NaN value.
Returns a number of the same type as this number. For doubles, (-0.0).sign is -0.0.
The result satisfies:
n == n.sign * n.abs()
for all numbers n (except NaN, because NaN isn't == to itself).
Implementation
num get sign; */

  double ad = 3.14;
  double bd = -5.6;
  double cd = 0;
  int ad1=5;
  int bd1=-5;
  int cd1=0;
  print(ad.sign); // 1.0
  print(bd.sign); // -1.0
  print(cd.sign); // 0.0
  print(ad1.sign); // 1
  print(bd1.sign); // -1
  print(cd1.sign); // 0

/* 7. abs(): 
The absolute value of this number.
The absolute value is the value itself, if the value is non-negative, and -value if the value is negative.
Integer overflow may cause the result of -value to stay negative.
Implementation
num abs();
*/
print((2).abs()); // 2
print((-2.5).abs()); // 2.5

/* 8. ceil(): 
The least integer no smaller than this.
Rounds fractional values towards positive infinity.
The number must be finite (see isFinite).
If the value is greater than the highest representable positive integer, the result is that highest positive integer. If the value is smaller than the highest representable negative integer, the result is that highest negative integer.
num ceil();
*/
print((2.5).ceil()); // 3
print((-2.5).ceil()); // -2

/* 9. floor: The greatest integer no greater than this number.
Rounds fractional values towards negative infinity.
The number must be finite (see isFinite).
If the value is greater than the highest representable positive integer, the result is that highest positive integer. If the value is smaller than the highest representable negative integer, the result is that highest negative integer.
Implementation
int floor();*/
print((2.5).floor()); // 2
print((-2.5).floor()); // -3

/* 10. ceilToDouble(): 
The least integer no smaller than this.
Rounds fractional values towards positive infinity.
The number must be finite (see isFinite).
If the value is greater than the highest representable positive integer, the result is that highest positive integer. If the value is smaller than the highest representable negative integer, the result is that highest negative integer.
num ceil();
*/
print((2.5).ceilToDouble()); // 3.0
print((-2.5).ceilToDouble()); // -2.0

/* 11. floorToDouble()
Returns the greatest double integer value no greater than this.

If this is already an integer valued double, including -0.0, or it is a non-finite double value, the value is returned unmodified.

For the purpose of rounding, -0.0 is considered to be below 0.0. A number d in the range 0.0 < d < 1.0 will return 0.0.

Implementation
double floorToDouble();*/

print((2.5).floorToDouble()); // 2.0
print((-2.5).floorToDouble()); // -3.0

/* 12. clamp: 
Returns this num clamped to be in the range lowerLimit-upperLimit.
The comparison is done using compareTo and therefore takes -0.0 into account. This also implies that double.nan is treated as the maximal double value.
The arguments lowerLimit and upperLimit must form a valid range where lowerLimit.compareTo(upperLimit) <= 0.
implementation
num clamp(num lowerLimit, num upperLimit);
*/
print(10.5.clamp(5, 10.0)); // 10.0
print(0.75.clamp(5, 10.0)); // 5
print((-10).clamp(-5, 5.0)); // -5
print((-0.0).clamp(-5, 5.0)); // -0.0

/* 13. compareTo: 
Compares this to other.
Returns a negative number if this is less than other, zero if they are equal, and a positive number if this is greater than other.
The ordering represented by this method is a total ordering of num values. All distinct doubles are non-equal, as are all distinct integers, but integers are equal to doubles if they have the same numerical value.
For doubles, the compareTo operation is different from the partial ordering given by operator==, operator< and operator>. For example, IEEE doubles impose that 0.0 == -0.0 and all comparison operations on NaN return false.
This function imposes a complete ordering for doubles. When using compareTo, the following properties hold:

All NaN values are considered equal, and greater than any numeric value.
-0.0 is less than 0.0 (and the integer 0), but greater than any non-zero negative value.
Negative infinity is less than all other values and positive infinity is greater than all non-NaN values.
All other values are compared using their numeric value.
Implementation
int compareTo(num other);
*/
print(1.compareTo(2)); // => -1
print(2.compareTo(1)); // => 1
print(1.compareTo(1)); // => 0

// The following comparisons yield different results than the
// corresponding comparison operators.
print((-0.0).compareTo(0.0));  // => -1
print(double.nan.compareTo(double.nan));  // => 0
print(double.infinity.compareTo(double.nan)); // => -1

// -0.0, and NaN comparison operators have rules imposed by the IEEE
// standard.
print(-0.0 == 0.0); // => true
print(double.nan == double.nan);  // => false
print(double.infinity < double.nan);  // => false
print(double.nan < double.infinity);  // => false
print(double.nan == double.infinity);  // => false

/* 14. remainder: 
The remainder of the truncating division of this by other.
The result r of this operation satisfies: this == (this ~/ other) * other + r. As a consequence, the remainder r has the same sign as the dividend this.
The result is an int, as described by int.remainder, if both this number and other are integers, otherwise the result is a double.
Implementation
num remainder(num other);
*/

print(5.remainder(3)); // 2
print(-5.remainder(3)); // -2
print(5.remainder(-3)); // 2
print(-5.remainder(-3)); // -2

/* 15. round:
The integer closest to this number.
Rounds away from zero when there is no closest integer: (3.5).round() == 4 and (-3.5).round() == -4.
The number must be finite (see isFinite).
If the value is greater than the highest representable positive integer, the result is that highest positive integer. If the value is smaller than the highest representable negative integer, the result is that highest negative integer.
Implementation
int round();
 */
print(3.5.round()); // 4
print(-3.5.round()); // -4

/* 16. roundToDouble
The double integer value closest to this value.
Rounds away from zero when there is no closest integer: (3.5).roundToDouble() == 4 and (-3.5).roundToDouble() == -4.
If this is already an integer valued double, including -0.0, or it is a non-finite double value, the value is returned unmodified.
For the purpose of rounding, -0.0 is considered to be below 0.0, and -0.0 is therefore considered closer to negative numbers than 0.0. This means that for a value d in the range -0.5 < d < 0.0, the result is -0.0.
Implementation
double roundToDouble();
*/

print(3.5.roundToDouble()); // 4.0
print(-3.5.roundToDouble()); // -4.0

/* 17. toStringAsExponential
An exponential string-representation of this number.
Converts this number to a double before computing the string representation.
If fractionDigits is given, then it must be an integer satisfying: 0 <= fractionDigits <= 20. In this case the string contains exactly fractionDigits after the decimal point. Otherwise, without the parameter, the returned string uses the shortest number of digits that accurately represent this number.
If fractionDigits equals 0, then the decimal point is omitted. Examples: 
Implementation
String toStringAsExponential([int? fractionDigits]);
*/
print(1.toStringAsExponential());       // 1e+0
print(1.toStringAsExponential(3));      // 1.000e+0
print(123456.toStringAsExponential());  // 1.23456e+5
print(123456.toStringAsExponential(3)); // 1.235e+5
print(123.toStringAsExponential(0));    // 1e+2

/* 18. toStringAsFixed
A decimal-point string-representation of this number.
Converts this number to a double before computing the string representation, as by toDouble.
If the absolute value of this is greater than or equal to 10^21, then this methods returns an exponential representation computed by this.toStringAsExponential(). Otherwise the result is the closest string representation with exactly fractionDigits digits after the decimal point. If fractionDigits equals 0, then the decimal point is omitted.
The parameter fractionDigits must be an integer satisfying: 0 <= fractionDigits <= 20.
Implementation
String toStringAsFixed(int fractionDigits);
*/
print(1.toStringAsFixed(3));  // 1.000
print((4321.12345678).toStringAsFixed(3));  // 4321.123
print((4321.12345678).toStringAsFixed(5));  // 4321.12346
print(123456789012345.toStringAsFixed(3));  // 123456789012345.000
print(10000000000000000.toStringAsFixed(4)); // 10000000000000000.0000
print(5.25.toStringAsFixed(0)); // 5

/* 19. toStringAsPrecision
A string representation with precision significant digits.
Converts this number to a double and returns a string representation of that value with exactly precision significant digits.
The parameter precision must be an integer satisfying: 1 <= precision <= 21.
Implementation
String toStringAsPrecision(int precision);
*/

print(1.toStringAsPrecision(2));       // 1.0
print(1e15.toStringAsPrecision(3));    // 1.00e+15
print(1234567.toStringAsPrecision(3)); // 1.23e+6
print(1234567.toStringAsPrecision(9)); // 1234567.00
print(0.00000012345.toStringAsPrecision(15)); // 1.23450000000000e-7
print(0.0000012345.toStringAsPrecision(15));  // 0.00000123450000000000

/* 20. truncate
The integer obtained by discarding any fractional digits from this.
Rounds fractional values towards zero.
The number must be finite (see isFinite).
If the value is greater than the highest representable positive integer, the result is that highest positive integer. If the value is smaller than the highest representable negative integer, the result is that highest negative integer.
Implementation
int truncate();
*/

double x = 3.14159;
int integerPart = x.truncate(); // integerPart is 3
print(integerPart); // 3

/* 21. truncateToDouble()
Returns the double integer value obtained by discarding any fractional digits from the double value of this.
If this is already an integer valued double, including -0.0, or it is a non-finite double value, the value is returned unmodified.
For the purpose of rounding, -0.0 is considered to be below 0.0. A number d in the range -1.0 < d < 0.0 will return -0.0, and in the range 0.0 < d < 1.0 it will return 0.0.
Implementation
double truncateToDouble();
*/
double x1= 3.14159;
double doublep = x1.truncateToDouble(); // integerPart is 3.0
print(doublep); // 3.0

}
