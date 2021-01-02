import '00_playground.dart';

void main() {

  int x = null;
  int n = 1;

  // Ternary operator
  String message = (x == null) ? "x is null" : "x is Not null";
  print(message + "\n");


  // Switch statement
  switch(n) {
    case 1:
      print("switch case 1");
      break;
    case 2:
      print("switch case 2");
      break;
    default:
      print("switch default case");
  }

  printLine();

  // for loop
  for (int i = 0; i < 3; i++) {
    print(i.toString() + " loop");
  }

  printLine();

  var intArray = [1, 2, 3];
  intArray.add(4);
  for (var i in intArray) {
    print(i);                                 // 1 2 3 4
  }

  printLine();

  int z = 3;
  while (z > 0) {
    z--;
    print(z);                                 // 2 1 0
  }

  printLine();

  z = 3;
  do {
    z--;
    print(z);                                 // 2 1 0
  } while (z > 0);

  printLine();

  // forEach is high-order function
  intArray.forEach( (e) => print(e));         // 1 2 3 4
  // or
  intArray.forEach(printNum);                 // 1 2 3 4
}

printNum(num) {
  print(num);
}
