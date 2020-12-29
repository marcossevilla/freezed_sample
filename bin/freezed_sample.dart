import 'package:freezed_sample/freezed_sample.dart';

// ignore_for_file: avoid_print

void main(List<String> arguments) {
  final user = User(name: 'Marcos', age: 21);
  final identicalUser = User(name: 'Marcos', age: 21);
  final differentUser = User(name: 'Elian', age: 20);

  print('First user is same as second? ${user == identicalUser}');
  print('First user is different as second? ${user == differentUser}');
}
