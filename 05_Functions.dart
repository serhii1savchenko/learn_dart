// each function is an object (instance of class Function)

import '00_playground.dart';

void main() {
  print(multiple.runtimeType);                    // (int, dynamic) => dynamic
  print(multiple(2, 19));
  print(multiple(2, 2.7));
  //print(multiple(2.1, 2));                        // compilation error

  printLine();

  print("arrow function output = " + square(5.5).toString());

  printLine();

  // anonymous function
  var list = [1, 2, 3, 4];
  list.forEach((element) {
    print("print from anonymous function = " + element.toString());
  });

  printLine();

  // functions with named parameters
  showNamedParamsVals(y: 7, x: 5);
  // by default named parameters are optional
  showNamedParamsVals(y: 1);
  showNamedParamsVals();

  printLine();

  print("calling function with optional positional operator");
  showPositionalParamsVals(111);
  showPositionalParamsVals();

}

dynamic multiple(int a, var b) {
  return a * b;
}

// arrow function
dynamic square(double x) => x * x;

// named parameters are optional and could have default values (x=999)
void showNamedParamsVals({int x=999, int y}) {
  print("x = " + x.toString() + " and y = " + y.toString());
}

// you can make positional parameters optional too
void showPositionalParamsVals([int x]) {
  print("x = " + x.toString());
}
