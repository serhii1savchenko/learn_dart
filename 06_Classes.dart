import '00_playground.dart';

class Person {
  // fields could be final | static | static const
    // final = value could not ba changed after first assigment in constructor
    // static = value is common for all objects
    // static const = value is defined before runtime
  String name;
  int age;

//  Person(String name, [int age = 0]) {
//    this.name = name;
//    this.age = age;
//  }
  // These two constructors are the same
  Person(this.name, [this.age=0]);

  // named constructor
  Person.guest([int age = 99]) {              // final fields could not be used in named constructors
    this.name = "Guest";
    this.age = age;
  }

  void printPersonInfo() {
    print("Name = " + name + "\n Age = " + age.toString());
  }
}

void main() {
  Person person = new Person("Donald", 100);
  person.printPersonInfo();
  person.age = 101;
  person.printPersonInfo();

  printLine();

  // keyword new is optional
  var person2 = Person("Jack");
  person2.printPersonInfo();

  printLine();

  var guest = Person.guest(101);
  guest.printPersonInfo();

}
