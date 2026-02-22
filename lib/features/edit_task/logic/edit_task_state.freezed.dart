// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_task_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditTaskState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditTaskState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditTaskState<$T>()';
}


}

/// @nodoc
class $EditTaskStateCopyWith<T,$Res>  {
$EditTaskStateCopyWith(EditTaskState<T> _, $Res Function(EditTaskState<T>) __);
}


/// Adds pattern-matching-related methods to [EditTaskState].
extension EditTaskStatePatterns<T> on EditTaskState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( ImageLoading<T> value)?  imageLoading,TResult Function( ImageSuccess<T> value)?  imageSuccess,TResult Function( ImageFailure<T> value)?  imageFailure,TResult Function( EdittaskLoading<T> value)?  taskEditLoading,TResult Function( EdittaskSuccess<T> value)?  taskEditSuccess,TResult Function( EdittaskError<T> value)?  taskEditFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ImageLoading() when imageLoading != null:
return imageLoading(_that);case ImageSuccess() when imageSuccess != null:
return imageSuccess(_that);case ImageFailure() when imageFailure != null:
return imageFailure(_that);case EdittaskLoading() when taskEditLoading != null:
return taskEditLoading(_that);case EdittaskSuccess() when taskEditSuccess != null:
return taskEditSuccess(_that);case EdittaskError() when taskEditFailure != null:
return taskEditFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( ImageLoading<T> value)  imageLoading,required TResult Function( ImageSuccess<T> value)  imageSuccess,required TResult Function( ImageFailure<T> value)  imageFailure,required TResult Function( EdittaskLoading<T> value)  taskEditLoading,required TResult Function( EdittaskSuccess<T> value)  taskEditSuccess,required TResult Function( EdittaskError<T> value)  taskEditFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case ImageLoading():
return imageLoading(_that);case ImageSuccess():
return imageSuccess(_that);case ImageFailure():
return imageFailure(_that);case EdittaskLoading():
return taskEditLoading(_that);case EdittaskSuccess():
return taskEditSuccess(_that);case EdittaskError():
return taskEditFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( ImageLoading<T> value)?  imageLoading,TResult? Function( ImageSuccess<T> value)?  imageSuccess,TResult? Function( ImageFailure<T> value)?  imageFailure,TResult? Function( EdittaskLoading<T> value)?  taskEditLoading,TResult? Function( EdittaskSuccess<T> value)?  taskEditSuccess,TResult? Function( EdittaskError<T> value)?  taskEditFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ImageLoading() when imageLoading != null:
return imageLoading(_that);case ImageSuccess() when imageSuccess != null:
return imageSuccess(_that);case ImageFailure() when imageFailure != null:
return imageFailure(_that);case EdittaskLoading() when taskEditLoading != null:
return taskEditLoading(_that);case EdittaskSuccess() when taskEditSuccess != null:
return taskEditSuccess(_that);case EdittaskError() when taskEditFailure != null:
return taskEditFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  imageLoading,TResult Function()?  imageSuccess,TResult Function( String error)?  imageFailure,TResult Function()?  taskEditLoading,TResult Function( T data)?  taskEditSuccess,TResult Function( String error)?  taskEditFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ImageLoading() when imageLoading != null:
return imageLoading();case ImageSuccess() when imageSuccess != null:
return imageSuccess();case ImageFailure() when imageFailure != null:
return imageFailure(_that.error);case EdittaskLoading() when taskEditLoading != null:
return taskEditLoading();case EdittaskSuccess() when taskEditSuccess != null:
return taskEditSuccess(_that.data);case EdittaskError() when taskEditFailure != null:
return taskEditFailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  imageLoading,required TResult Function()  imageSuccess,required TResult Function( String error)  imageFailure,required TResult Function()  taskEditLoading,required TResult Function( T data)  taskEditSuccess,required TResult Function( String error)  taskEditFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case ImageLoading():
return imageLoading();case ImageSuccess():
return imageSuccess();case ImageFailure():
return imageFailure(_that.error);case EdittaskLoading():
return taskEditLoading();case EdittaskSuccess():
return taskEditSuccess(_that.data);case EdittaskError():
return taskEditFailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  imageLoading,TResult? Function()?  imageSuccess,TResult? Function( String error)?  imageFailure,TResult? Function()?  taskEditLoading,TResult? Function( T data)?  taskEditSuccess,TResult? Function( String error)?  taskEditFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ImageLoading() when imageLoading != null:
return imageLoading();case ImageSuccess() when imageSuccess != null:
return imageSuccess();case ImageFailure() when imageFailure != null:
return imageFailure(_that.error);case EdittaskLoading() when taskEditLoading != null:
return taskEditLoading();case EdittaskSuccess() when taskEditSuccess != null:
return taskEditSuccess(_that.data);case EdittaskError() when taskEditFailure != null:
return taskEditFailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements EditTaskState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditTaskState<$T>.initial()';
}


}




/// @nodoc


class ImageLoading<T> implements EditTaskState<T> {
  const ImageLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditTaskState<$T>.imageLoading()';
}


}




/// @nodoc


class ImageSuccess<T> implements EditTaskState<T> {
  const ImageSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageSuccess<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditTaskState<$T>.imageSuccess()';
}


}




/// @nodoc


class ImageFailure<T> implements EditTaskState<T> {
  const ImageFailure(this.error);
  

 final  String error;

/// Create a copy of EditTaskState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageFailureCopyWith<T, ImageFailure<T>> get copyWith => _$ImageFailureCopyWithImpl<T, ImageFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'EditTaskState<$T>.imageFailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $ImageFailureCopyWith<T,$Res> implements $EditTaskStateCopyWith<T, $Res> {
  factory $ImageFailureCopyWith(ImageFailure<T> value, $Res Function(ImageFailure<T>) _then) = _$ImageFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ImageFailureCopyWithImpl<T,$Res>
    implements $ImageFailureCopyWith<T, $Res> {
  _$ImageFailureCopyWithImpl(this._self, this._then);

  final ImageFailure<T> _self;
  final $Res Function(ImageFailure<T>) _then;

/// Create a copy of EditTaskState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ImageFailure<T>(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class EdittaskLoading<T> implements EditTaskState<T> {
  const EdittaskLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EdittaskLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditTaskState<$T>.taskEditLoading()';
}


}




/// @nodoc


class EdittaskSuccess<T> implements EditTaskState<T> {
  const EdittaskSuccess(this.data);
  

 final  T data;

/// Create a copy of EditTaskState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EdittaskSuccessCopyWith<T, EdittaskSuccess<T>> get copyWith => _$EdittaskSuccessCopyWithImpl<T, EdittaskSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EdittaskSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'EditTaskState<$T>.taskEditSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $EdittaskSuccessCopyWith<T,$Res> implements $EditTaskStateCopyWith<T, $Res> {
  factory $EdittaskSuccessCopyWith(EdittaskSuccess<T> value, $Res Function(EdittaskSuccess<T>) _then) = _$EdittaskSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$EdittaskSuccessCopyWithImpl<T,$Res>
    implements $EdittaskSuccessCopyWith<T, $Res> {
  _$EdittaskSuccessCopyWithImpl(this._self, this._then);

  final EdittaskSuccess<T> _self;
  final $Res Function(EdittaskSuccess<T>) _then;

/// Create a copy of EditTaskState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(EdittaskSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class EdittaskError<T> implements EditTaskState<T> {
  const EdittaskError({required this.error});
  

 final  String error;

/// Create a copy of EditTaskState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EdittaskErrorCopyWith<T, EdittaskError<T>> get copyWith => _$EdittaskErrorCopyWithImpl<T, EdittaskError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EdittaskError<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'EditTaskState<$T>.taskEditFailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $EdittaskErrorCopyWith<T,$Res> implements $EditTaskStateCopyWith<T, $Res> {
  factory $EdittaskErrorCopyWith(EdittaskError<T> value, $Res Function(EdittaskError<T>) _then) = _$EdittaskErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$EdittaskErrorCopyWithImpl<T,$Res>
    implements $EdittaskErrorCopyWith<T, $Res> {
  _$EdittaskErrorCopyWithImpl(this._self, this._then);

  final EdittaskError<T> _self;
  final $Res Function(EdittaskError<T>) _then;

/// Create a copy of EditTaskState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(EdittaskError<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
