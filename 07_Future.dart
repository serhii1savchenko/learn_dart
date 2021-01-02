/**
 * A future (lower case “f”) is an instance of the Future (capitalized “F”) class.
 * A future represents the result of an asynchronous operation, and can have two states: uncompleted or completed.
 *
 * Uncompleted
 * When you call an asynchronous function, it returns an uncompleted future.
 * That future is waiting for the function’s asynchronous operation to finish or to throw an error.
 *
 * Completed
 * If the asynchronous operation succeeds, the future completes with a value. Otherwise it completes with an error.
*/

void main() {
  fetchUserOrder();
  print('Fetching user order...');

  //fetchUserOrderException();
  //print('Fetching user order...');
}

Future<void> fetchUserOrder() {
  // Imagine that this function is fetching user info from another service or database.
  return Future.delayed(Duration(seconds: 2), () => print('Large Latte'));
}

Future<void> fetchUserOrderException() {
  // Imagine that this function is fetching user info but encounters a bug
  return Future.delayed(Duration(seconds: 2),
          () => throw Exception('Login failed: user ID is invalid'));
}
