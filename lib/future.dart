Future<String> getFetchData() {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Capucino';
  });
}

void main(List<String> args) async{
  print('Start');
  try {
    final data = await getFetchData();
    print("Your order is $data");
  } catch (e) {
    print(e);
  }
  print('End');
}
