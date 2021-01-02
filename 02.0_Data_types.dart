import 'dart:math';

main() {
/* Default types
  * int
  * double
  * String
  * bool
  * dynamic
*/

  double d = 100.345;
  print(d/3);

  dynamic dynamicVar = pi;
  print("Pi = " + pi.toString());
  print(pi.runtimeType);

  dynamicVar = "it is a String!";
  print("Now " + dynamicVar);
  print(pi.runtimeType.toString() + "\n");        // pi type is not changed

  // ternary operator works!
  d = 1024.9;
  var j = (d.toInt() % 2 == 0) ? 'Even' : 'Odd';
  print(d.toInt().toString() + " is " + j.toString() + "\n");

  String s1 = 'We can use " here!';
  String s2 = "We can use ' here!";
  String rawString = r'Haha i can use this here \n "';
  String rawString2 = r"Haha i can use this here \n '";
  print(s1);
  print(s2);
  print(rawString);
  print(rawString2);

  String multi = '''Multi 
  lined String
  ''';
  print(multi);


  // Constants
  const int constInt = 1;
  // constInt = 2;                         // this produces an error


  // String to int conversion
  int one = int.parse("1");
  // int to String
  String oneStr = 1.toString();

  // assertions
  assert(one == 1);
  // assert(1 == 2);                       // this produces an error


  // arrays are dynamic
  var intArray = [1, 2, 3];
  intArray.add(4);


  int num;
  print(num);                             // null
  num = null;
  print(num);                             // null

}
