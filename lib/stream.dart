Future<int> countStream(Stream<int> stream) async {
  var sum = 0;
  await for (var value in stream) {
    sum += value;
  }
  return sum;
}

Future<int> sumReduceStream(Stream<int> stream) =>
    stream.fold(5, (a, b) => a + b);

Future<void> main(List<String> args) async {
  final stream = Stream<int>.fromIterable([1, 2, 3, 4]);
  // final sum = await countStream(stream);
  // print("sum = $sum");

  final sum = await sumReduceStream(stream);
  print("Sum = $sum");
}
