abstract class InterfaceA {
  void a();
}

abstract class InterfaceB {
  void b();
}

class AB implements InterfaceA, InterfaceB {
  @override
  void a() {}

  @override
  void b() {}
}

abstract class Base {
  void foo();
  void bar() => print('Bar');
}

class SubClass implements Base {
  @override
  void bar() {
    // TODO: implement bar
  }

  @override
  void foo() {
    // TODO: implement foo
  }
}

// Implements => can implement multiple abstract classes But mandatory to 
//override all defined and non-defined methods

// extends => can implement only 1 abstract class But mandatory to 
//override only non-defined methods.