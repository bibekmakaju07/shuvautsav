import 'package:freezed_annotation/freezed_annotation.dart';

part 'appstate.freezed.dart';

@freezed
class AppState<S, E> with _$AppState<S, E> {
  factory AppState.initial() = _Initial;
  factory AppState.loading(bool loading, {S? data}) = _Loading;
  factory AppState.success(S data, {Map<String, dynamic>? extra}) = _Success;
  factory AppState.error(E data, {Map<String, dynamic>? extra}) = _Error;
}
