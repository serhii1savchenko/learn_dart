// Null Aware Operators
// ?.   ??    ??=

class Num {
  int i = 10;
}

main() {

  print("Null aware operators test!");

  Num a;
  //int b = a.i;                                  // Runtime Exception! Unhandled exception
  int b = a?.i;
  print("b = " + b.toString());                   // b = null

  // keyword 'new' is optional
  Num n = new Num();

  // if n is not null then access n.i else 0
  int x = n?.i ?? 0;
  print("x = " + x.toString());                   // x = 10

  n = null;
  x = n?.i ?? 0;
  print("x = " + x.toString());                   // x = 0

  // if i is null then use 101 and assign 101 ti i
  int i;
  int result = (i ??= 101);
  print("result = " + result.toString());         // result = 101
  print("i = " + i.toString());                   // i = 101          !!!

}
