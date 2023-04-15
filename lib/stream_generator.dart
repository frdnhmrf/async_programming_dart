Iterable<int> syncIterable(int n) sync* {
  for (var i = 0; i < n; i++) {
    yield i;
  }
}

Future<int> sumReduceStream(Stream<int> stream) =>
    stream.fold(5, (a, b) => a + b);

Stream<int> asyncStream(int n) async* {
  for (var i = 1; i <= n; i++) {
    await Future.delayed(Duration(seconds: 1));
    print(i);
    yield i;
  }
}

Future<void> main(List<String> args) async {
  // final iterable = syncIterable(10);
  // iterable.forEach((element) {
  //   print(element);
  // });

  final stream = asyncStream(4);
  final sum = await sumReduceStream(stream);
  print("Sum = $sum");
}
