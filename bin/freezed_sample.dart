import 'package:freezed_sample/freezed_sample.dart';

// ignore_for_file: avoid_print

void main(List<String> arguments) {
  final user = User(name: 'Marcos', age: 21);
  final identicalUser = User(name: 'Marcos', age: 21);
  final differentUser = User(name: 'Elian', age: 20);

  print('First user is same as second? ${user == identicalUser}');
  print('First user is different as second? ${user != differentUser}');

  final serialized = user.toJson();
  final deserialized = User.fromJson(serialized);

  print('serialized user: $serialized');
  print('deserialized user: $deserialized');

  const state = CommonState(42);

  print(
    state.maybeWhen(
      null, // ignore the default case
      loading: () => 'loading',
      error: (error) => '$error',
      // did not specify an `error` callback
      orElse: () => 'fallback',
    ),
  );
}
