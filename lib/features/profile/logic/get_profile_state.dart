import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_profile_state.freezed.dart';
@Freezed()
class GetProfileState<T> with _$GetProfileState<T> {
  const factory GetProfileState.initial() = _Initial;
  const factory GetProfileState.loading() = Loading;
  const factory GetProfileState.success(T data) = Success<T>;
  const factory GetProfileState.failure({required String error}) = Error;
}