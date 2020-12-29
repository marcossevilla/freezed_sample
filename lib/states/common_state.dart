import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_state.freezed.dart';

@freezed

/// Represents a common state class used to build the UI
abstract class CommonState with _$CommonState {
  /// Data is present state, also default case
  const factory CommonState(int value) = Data;

  /// Data is loading state
  const factory CommonState.loading() = Loading;

  /// Error when loading data state
  const factory CommonState.error([String message]) = ErrorDetails;
}
