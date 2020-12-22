import "dart:collection" show Queue;
import 'dart:math';

class Stack<T> {
  final Queue<T> s;

  Stack() : s = Queue<T>();

  int get length => this.s.length;

  bool get isEmpty => this.s.isEmpty;

  bool get isNotEmpty => this.s.isNotEmpty;

  void clear() => this.s.clear();

  T peek() {
    if (this.isEmpty) {
      throw StateError("Cannot peek() on empty stack.");
    }
    return this.s.last;
  }

  T pop() {
    if (this.isEmpty) {
      throw StateError("Cannot pop() on empty stack.");
    }
    return this.s.removeLast();
  }

  void push(final T element) => this.s.addLast(element);
}

class Queuee<T> {
  List q = new List();

  int get length => this.q.length;

  bool get isEmpty => this.q.isEmpty;

  bool get isNotEmpty => this.q.isNotEmpty;

  T peek() {
    if (q.isEmpty) {
      throw StateError("Cannot peek() on empty stack.");
    }
    return this.q.last;
  }

  void enquee(final T element) => q.add(element);

  T dequee() {
    if (q.isEmpty) {
      throw StateError("Cannot deque on empty queue.");
    }
    return this.q.removeLast();
  }
}

TestStack(Stack element) {
  for (int i = 0; i < 1000; i++) {
    Random random = new Random();
    element.push(random.nextInt(1000));
  }
  print("the lenght of stack is  " + element.length.toString());

  for (int i = 0; i < 1000; i++) {
    element.pop();
    if (element.isNotEmpty) print(element.peek());
  }
  print("the lenght of stack after pop operation is  " +
      element.length.toString());
}

TestQueue(Queuee element) {
  for (int i = 0; i < 1000; i++) {
    Random random = new Random();
    element.enquee(random.nextInt(1000));
  }
  print("the lenght of Queue is  " + element.length.toString());

  for (int i = 0; i < 1000; i++) {
    element.dequee();
    if (element.isNotEmpty) print(element.peek());
  }
  print("the lenght of Queue after deque operation is  " +
      element.length.toString());
}

void main(List<String> arguments) {
  var q = Queuee<int>();
  var s = Stack<int>();

  TestStack(s);
  TestQueue(q);
}
