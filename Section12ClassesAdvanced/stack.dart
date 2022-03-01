class Stack<T> {
  final List<T> _items = [];

  void push(item) => _items.add(item);

  T pop() => _items.removeLast();
}

void main() {
  final stack = Stack<int>();
  stack.push(1);
  stack.push(2);
  print(stack);
  print(stack.pop());
  print(stack.pop());
  print(stack);

  final names = Stack<String>();
  print(names);
  names.push('Cat');
  names.push('Dog');
  print(names.pop());
  print(names.pop());
  print(names);
}
