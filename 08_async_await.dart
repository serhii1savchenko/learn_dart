/**
 * To define an async function, add async before the function body.
 * The await keyword works only in async functions.
 *
 * async: You can use the async keyword before a function’s body to mark it as asynchronous.
 * async function: An async function is a function labeled with the async keyword.
 * await: You can use the await keyword to get the completed result of an asynchronous expression.
 *        The await keyword only works within an async function.
 */

Future<void> main() async {
  print('Fetching user order...');
  print(await createOrderMessage());
}

Future<String> createOrderMessage() async {
  var order = await fetchUserOrder();
  return 'Your order is: $order';
}

// Imagine that this function is more complex and slow.
Future<String> fetchUserOrder() =>
    Future.delayed(
      Duration(seconds: 2),
          () => 'Large Latte',
    );
