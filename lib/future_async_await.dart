Future<String> getFirstName() async {
  return "Ferdian";
}

Future<String> getLastName() async {
  return "Ma'ruf";
}

Future<String> sayHello(String name) async {
  return "Hello $name";
}

Future<void> main(List<String> args) async {
  try {
    var firstName = await getFirstName();
    var lastName = await getLastName();
    var hello = await sayHello("$firstName $lastName");
    print(hello);
  } catch (e) {
    print(e);
  } finally {
    print("Done");
  }
}
