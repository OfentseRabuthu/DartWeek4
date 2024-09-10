import 'dart:io';

void main() {
  // String Manipulation
  String str1 = "Hello";
  String str2 = "World";

  // Concatenation
  String concatenated = str1 + " " + str2;
  print("Concatenated: $concatenated");

  // Interpolation
  String interpolated = "$str1 $str2";
  print("Interpolated: $interpolated");

  // Substring Extraction
  String substring = concatenated.substring(5,11 );
  print("Substring: $substring");

  // Case Conversion
  String upperCase = concatenated.toUpperCase();
  String lowerCase = concatenated.toLowerCase();
  print("Uppercase: $upperCase");
  print("Lowercase: $lowerCase");

  // Reverse String
  String reversed = reverseString(concatenated);
  print("Reversed: $reversed");

  // Length of String
  int length = concatenated.length;
  print("Length: $length");

  // Collections Example
  demonstrateCollections();

  // File Handling and Date/Time
  handleFileOperations();
  logDateTime();
}

// Function to reverse a string
String reverseString(String str) {
  return str.split('').reversed.join('');
}

// Collections: Lists, Sets, Maps
void demonstrateCollections() {
  // List
  List<String> fruits = ['Orange', 'White Grapes', 'Peach'];
  fruits.add('Kiwi');
  fruits.remove('White Grapes');
  print("List: $fruits");

  // Set
  Set<int> numbers = {2, 4, 6};
  numbers.add(8);
  numbers.remove(2);
  print("Set: $numbers");

  // Map
  Map<String, int> ages = {'Jon': 36, 'Botshelo': 4};
  ages['Judy'] = 65;
  ages.remove('Jon');
  print("Map: $ages");
}

// File Handling
void handleFileOperations() {
  // Reading from a file
  try {
    File inputFile = File('input.txt');
    if (inputFile.existsSync()) {
      String content = inputFile.readAsStringSync();
      print("Read from file: $content");

      // Writing to a file
      File outputFile = File('output.txt');
      outputFile.writeAsStringSync("New data added: $content");
      print("Data written to file.");
    } else {
      print("File 'input.txt' does not exist.");
    }
  } catch (e) {
    print("Error: $e");
  }
}

// Date and Time Operations
void logDateTime() {
  // Current DateTime
  DateTime now = DateTime.now();
  print("Current DateTime: $now");

  // Format DateTime (Simple Formatting)
  String formattedDate =
      "${now.year}-${now.month}-${now.day} ${now.hour}:${now.minute}:${now.second}";
  print("Formatted DateTime: $formattedDate");

  // Manipulate DateTime
  DateTime tomorrow = now.add(Duration(days: 1));
  print("Tomorrow's DateTime: $tomorrow");

  // Difference between two dates
  Duration difference = tomorrow.difference(now);
  print("Difference: ${difference.inDays} days");
}
