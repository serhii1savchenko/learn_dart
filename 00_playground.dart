void main() {

  // Dart is Object oriented programming language. In Dart everything is object
  // Dart has Static types and it is Strongly typed language (types are defined during the compilation)
  // but it supports special 'dynamic' type
  var number = 2020;
  int number2 = 2020;

  if (number == number2) {
    print("Equals!");
  }

  printLine();

  String hello = "Hello World!!!";
  print(hello + "\n   from Dart");

  printLine();

  for (int i = 0; i < 2; i++) {
    print("i = " + i.toString());
  }

  printLine();

  bool isSmthng = true;
  print(isSmthng.toString() + " boolean value");

  if (isSmthng) {
    print('this is good');
  } else {
    print("not good");
  }

  printLine();

  int k = 100999;

  switch(k) {
    case 10: print("10"); break;
    default: print("default");
  }

}

// keyword void is optional
printLine(){
  print("");
}