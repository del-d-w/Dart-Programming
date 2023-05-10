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
