import 'dart:async';

/** keywords yang diperlukan untuk menjalankan fungsi ansyc */

Future<String> firstAsync() async {
  Future<String>.delayed(const Duration(seconds: 2));
  return "First!";
}

Future<String> secondAsync() async {
  Future<String>.delayed(const Duration(seconds: 2));
  return "Second!";
}

Future<String> thirdAsync() async {
  await Future<String>.delayed(const Duration(seconds: 2));
  return "Third!";
}

void main() async {
  var f = await firstAsync();
  print(f);

  var s = await secondAsync();
  print(s);

  var t = await thirdAsync();
  print(t);

  print('done');
}
