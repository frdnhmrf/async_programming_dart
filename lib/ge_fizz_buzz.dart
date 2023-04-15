Stream<String> asyncFizzBuzz() async* {
  for (var i = 1; i <= 15; i++) {
    await Future.delayed(Duration(seconds: 1));
    if (i % 15 == 0) {
      yield "FizzBuzz";
    } else if (i % 3 == 0) {
      yield "Fizz";
    } else if (i % 5 == 0) {
      yield "Buzz";
    } else {
      yield "$i";
    }
  }
}

Future<void> main(List<String> args)  async{
  final stream = asyncFizzBuzz(); 
  await for (var value in stream) {
    print(value);
  }
}