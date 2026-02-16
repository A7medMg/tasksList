// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_task_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddTaskState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddTaskState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddTaskState<$T>()';
}


}

/// @nodoc
class $AddTaskStateCopyWith<T,$Res>  {
$AddTaskStateCopyWith(AddTaskState<T> _, $Res Function(AddTaskState<T>) __);
}


/// Adds pattern-matching-related methods to [AddTaskState].
extension AddTaskStatePatterns<T> on AddTaskState<T> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( AddImageLoading<T> value)?  loading,TResult Function( AddImageSuccess<T> value)?  success,TResult Function( AddImageError<T> value)?  failure,TResult Function( AddtaskLoading<T> value)?  taskLoading,TResult Function( AddtaskSuccess<T> value)?  taskSuccess,TResult Function( AddtaskError<T> value)?  taskFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case AddImageLoading() when loading != null:
return loading(_that);case AddImageSuccess() when success != null:
return success(_that);case AddImageError() when failure != null:
return failure(_that);case AddtaskLoading() when taskLoading != null:
return taskLoading(_that);case AddtaskSuccess() when taskSuccess != null:
return taskSuccess(_that);case AddtaskError() when taskFailure != null:
return taskFailure(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( AddImageLoading<T> value)  loading,required TResult Function( AddImageSuccess<T> value)  success,required TResult Function( AddImageError<T> value)  failure,required TResult Function( AddtaskLoading<T> value)  taskLoading,required TResult Function( AddtaskSuccess<T> value)  taskSuccess,required TResult Function( AddtaskError<T> value)  taskFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case AddImageLoading():
return loading(_that);case AddImageSuccess():
return success(_that);case AddImageError():
return failure(_that);case AddtaskLoading():
return taskLoading(_that);case AddtaskSuccess():
return taskSuccess(_that);case AddtaskError():
return taskFailure(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( AddImageLoading<T> value)?  loading,TResult? Function( AddImageSuccess<T> value)?  success,TResult? Function( AddImageError<T> value)?  failure,TResult? Function( AddtaskLoading<T> value)?  taskLoading,TResult? Function( AddtaskSuccess<T> value)?  taskSuccess,TResult? Function( AddtaskError<T> value)?  taskFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case AddImageLoading() when loading != null:
return loading(_that);case AddImageSuccess() when success != null:
return success(_that);case AddImageError() when failure != null:
return failure(_that);case AddtaskLoading() when taskLoading != null:
return taskLoading(_that);case AddtaskSuccess() when taskSuccess != null:
return taskSuccess(_that);case AddtaskError() when taskFailure != null:
return taskFailure(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( String error)?  failure,TResult Function()?  taskLoading,TResult Function( T data)?  taskSuccess,TResult Function( String error)?  taskFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case AddImageLoading() when loading != null:
return loading();case AddImageSuccess() when success != null:
return success();case AddImageError() when failure != null:
return failure(_that.error);case AddtaskLoading() when taskLoading != null:
return taskLoading();case AddtaskSuccess() when taskSuccess != null:
return taskSuccess(_that.data);case AddtaskError() when taskFailure != null:
return taskFailure(_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( String error)  failure,required TResult Function()  taskLoading,required TResult Function( T data)  taskSuccess,required TResult Function( String error)  taskFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case AddImageLoading():
return loading();case AddImageSuccess():
return success();case AddImageError():
return failure(_that.error);case AddtaskLoading():
return taskLoading();case AddtaskSuccess():
return taskSuccess(_that.data);case AddtaskError():
return taskFailure(_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( String error)?  failure,TResult? Function()?  taskLoading,TResult? Function( T data)?  taskSuccess,TResult? Function( String error)?  taskFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case AddImageLoading() when loading != null:
return loading();case AddImageSuccess() when success != null:
return success();case AddImageError() when failure != null:
return failure(_that.error);case AddtaskLoading() when taskLoading != null:
return taskLoading();case AddtaskSuccess() when taskSuccess != null:
return taskSuccess(_that.data);case AddtaskError() when taskFailure != null:
return taskFailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements AddTaskState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddTaskState<$T>.initial()';
}


}




/// @nodoc


class AddImageLoading<T> implements AddTaskState<T> {
  const AddImageLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddImageLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddTaskState<$T>.loading()';
}


}




/// @nodoc


class AddImageSuccess<T> implements AddTaskState<T> {
  const AddImageSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddImageSuccess<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddTaskState<$T>.success()';
}


}




/// @nodoc


class AddImageError<T> implements AddTaskState<T> {
  const AddImageError({required this.error});
  

 final  String error;

/// Create a copy of AddTaskState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddImageErrorCopyWith<T, AddImageError<T>> get copyWith => _$AddImageErrorCopyWithImpl<T, AddImageError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddImageError<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'AddTaskState<$T>.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class $AddImageErrorCopyWith<T,$Res> implements $AddTaskStateCopyWith<T, $Res> {
  factory $AddImageErrorCopyWith(AddImageError<T> value, $Res Function(AddImageError<T>) _then) = _$AddImageErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$AddImageErrorCopyWithImpl<T,$Res>
    implements $AddImageErrorCopyWith<T, $Res> {
  _$AddImageErrorCopyWithImpl(this._self, this._then);

  final AddImageError<T> _self;
  final $Res Function(AddImageError<T>) _then;

/// Create a copy of AddTaskState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(AddImageError<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AddtaskLoading<T> implements AddTaskState<T> {
  const AddtaskLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddtaskLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddTaskState<$T>.taskLoading()';
}


}




/// @nodoc


class AddtaskSuccess<T> implements AddTaskState<T> {
  const AddtaskSuccess(this.data);
  

 final  T data;

/// Create a copy of AddTaskState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddtaskSuccessCopyWith<T, AddtaskSuccess<T>> get copyWith => _$AddtaskSuccessCopyWithImpl<T, AddtaskSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddtaskSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'AddTaskState<$T>.taskSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $AddtaskSuccessCopyWith<T,$Res> implements $AddTaskStateCopyWith<T, $Res> {
  factory $AddtaskSuccessCopyWith(AddtaskSuccess<T> value, $Res Function(AddtaskSuccess<T>) _then) = _$AddtaskSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$AddtaskSuccessCopyWithImpl<T,$Res>
    implements $AddtaskSuccessCopyWith<T, $Res> {
  _$AddtaskSuccessCopyWithImpl(this._self, this._then);

  final AddtaskSuccess<T> _self;
  final $Res Function(AddtaskSuccess<T>) _then;

/// Create a copy of AddTaskState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(AddtaskSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class AddtaskError<T> implements AddTaskState<T> {
  const AddtaskError({required this.error});
  

 final  String error;

/// Create a copy of AddTaskState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddtaskErrorCopyWith<T, AddtaskError<T>> get copyWith => _$AddtaskErrorCopyWithImpl<T, AddtaskError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddtaskError<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'AddTaskState<$T>.taskFailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $AddtaskErrorCopyWith<T,$Res> implements $AddTaskStateCopyWith<T, $Res> {
  factory $AddtaskErrorCopyWith(AddtaskError<T> value, $Res Function(AddtaskError<T>) _then) = _$AddtaskErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$AddtaskErrorCopyWithImpl<T,$Res>
    implements $AddtaskErrorCopyWith<T, $Res> {
  _$AddtaskErrorCopyWithImpl(this._self, this._then);

  final AddtaskError<T> _self;
  final $Res Function(AddtaskError<T>) _then;

/// Create a copy of AddTaskState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(AddtaskError<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
