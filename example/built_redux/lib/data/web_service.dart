import 'dart:async';
import 'package:built_redux_sample/models/models.dart';

/// A class that is meant to represent a Web Service you would call to fetch
/// and persist Todos to and from the cloud.
///
/// Since we're trying to keep this example simple, it doesn't communicate with
/// a real server but simply emulates the functionality.
class WebClient {
  final Duration delay;

  const WebClient([this.delay = const Duration(milliseconds: 1200)]);

  /// Mock that "fetches" some Todos from a "web service" after a short delay
  Future<List<Todo>> fetchTodos() async {
    return new Future.delayed(
        delay,
        () => [
              new Todo.builder(
                (b) => b
                  ..task = 'Buy food for da kitty'
                  ..note = 'With the chickeny bits!'
                  ..id = '1',
              ),
              new Todo.builder(
                (b) => b
                  ..task = 'Find a Red Sea dive trip'
                  ..note = 'Echo vs MY Dream'
                  ..id = '2',
              ),
              new Todo.builder(
                (b) => b
                  ..task = 'Book flights to Egypt'
                  ..complete = true
                  ..id = '3',
              ),
              new Todo.builder(
                (b) => b
                  ..task = 'Decide on accommodation'
                  ..id = '4',
              ),
              new Todo.builder(
                (b) => b
                  ..task = 'Sip Margaritas'
                  ..note = 'on the beach'
                  ..complete = true
                  ..id = '5',
              ),
            ]);
  }

  /// Mock that returns true or false for success or failure. In this case,
  /// it will "Always Succeed"
  Future<bool> postTodos(List<Todo> todos) async {
    return new Future.value(true);
  }
}
