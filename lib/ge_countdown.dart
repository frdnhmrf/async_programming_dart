Future<void> countdown(int n) async {
  for (var i = n; i >= 0; i--) {
    await Future.delayed(
      Duration(seconds: 1),
      () => print(i),
    );
  }
}

Future<void> main(List<String> args) async {
  await countdown(7);
  print("done");
}
