import 'package:freezed_sample/freezed_sample.dart';
import 'package:test/test.dart';

void main() {
  final user = User(name: 'Marcos', age: 21);
  final identicalUser = User(name: 'Marcos', age: 21);
  final differentUser = User(name: 'Elian', age: 20);

  test('Should return true for 2 identical objects', () {
    expect(user, equals(identicalUser));
  });

  test('Should return false for 2 different objects', () {
    expect(user, isNot(differentUser));
  });
}
