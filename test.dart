class Test {
   String? _name;

   Test(this._name);
  // Test(String name);
  // Test(String name) : _name = name;
  // Test(String name);

  factory Test.hehe() {
    return Test._(name: 'factory constructor name');
  }

  Test._({required String name}) : _name = name {
    print(">>> Private constructor called with name: $name");
  }

  Test.blank() : _name = 'blank name' {
    print(">>> Blank constructor called");
  }

  Test.forwardToBlank() : this.blank();

  
}

class Data {
  static Data instanceOfData = Data._();

  factory Data() {
    return instanceOfData;
  }

  Data._();
}

void main() {
  final test1 = Test('asdasd');

  final test2 = Test.forwardToBlank();
  final test3 = Test.blank();

  test1._name = "new name for test1";

  print(">>> Test1 name: ${test1._name}");
  print(">>> Test2 name: ${test2._name}");
  print(">>> Test3 name: ${test3._name}");
}
