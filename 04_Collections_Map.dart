import 'dart:collection';

import '00_playground.dart';

void main() {

  List strings = new List();
  strings.add("a");
  strings.add("b");
  print(strings.length.toString() + " - " + strings.toString());

  strings = ["a", "b", "c"];
  for (String s in strings) {
    print(s);
  }

  printLine();

  Set setOfStrings = new Set();
  setOfStrings.add("a");
  setOfStrings.add("a");
  setOfStrings.add("b");
  print("set var 1 = " + setOfStrings.toString());
  setOfStrings = {"1", "1",  "2", "3"};
  print("set var 2 = " + setOfStrings.toString());

  printLine();

  var listOfObjects = ["1", "2", 3, 4];
  print("listOfObjects runtime type = " + listOfObjects.runtimeType.toString());
  for (var o in listOfObjects) {
    print("o = " + o.toString() + " - type = " + o.runtimeType.toString());
  }

  printLine();

  // const lists are immutable
  List<String> imList = const ["aaa", "bbb"];
  // imList[0] = "a1";                               // Unsupported operation: Cannot modify an unmodifiable list
  print("const list is immutable = " + imList.toString());

  // deep copy of a list
  var deepCopy = [...imList];
  deepCopy[0] = "aaa1";
  print("deep copy of const can by modified! = " + deepCopy.toString());

  printLine();

  Map<String, Object> mapExample = new HashMap();
  mapExample["first"] = 1;
  mapExample["first"] = 10;
  mapExample["second"] = 20;
  print("Map example = " + mapExample["first"].toString());           // 10

  var anotherMap = {1: "one", 2: "two"};
  print("anotherMap = " + anotherMap.toString());

}
