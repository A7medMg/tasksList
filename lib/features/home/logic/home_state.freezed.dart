// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TodoState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoState()';
}


}

/// @nodoc
class $TodoStateCopyWith<$Res>  {
$TodoStateCopyWith(TodoState _, $Res Function(TodoState) __);
}


/// Adds pattern-matching-related methods to [TodoState].
extension TodoStatePatterns on TodoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( TodoLoading value)?  loading,TResult Function( TodoSuccess value)?  success,TResult Function( TodoError value)?  error,TResult Function( TodoDeleteError value)?  deleteError,TResult Function( TodoDeleteActionSuccess value)?  deleteActionSuccess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case TodoLoading() when loading != null:
return loading(_that);case TodoSuccess() when success != null:
return success(_that);case TodoError() when error != null:
return error(_that);case TodoDeleteError() when deleteError != null:
return deleteError(_that);case TodoDeleteActionSuccess() when deleteActionSuccess != null:
return deleteActionSuccess(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( TodoLoading value)  loading,required TResult Function( TodoSuccess value)  success,required TResult Function( TodoError value)  error,required TResult Function( TodoDeleteError value)  deleteError,required TResult Function( TodoDeleteActionSuccess value)  deleteActionSuccess,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case TodoLoading():
return loading(_that);case TodoSuccess():
return success(_that);case TodoError():
return error(_that);case TodoDeleteError():
return deleteError(_that);case TodoDeleteActionSuccess():
return deleteActionSuccess(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( TodoLoading value)?  loading,TResult? Function( TodoSuccess value)?  success,TResult? Function( TodoError value)?  error,TResult? Function( TodoDeleteError value)?  deleteError,TResult? Function( TodoDeleteActionSuccess value)?  deleteActionSuccess,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case TodoLoading() when loading != null:
return loading(_that);case TodoSuccess() when success != null:
return success(_that);case TodoError() when error != null:
return error(_that);case TodoDeleteError() when deleteError != null:
return deleteError(_that);case TodoDeleteActionSuccess() when deleteActionSuccess != null:
return deleteActionSuccess(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<TaskResponseModel> todos)?  success,TResult Function( String message)?  error,TResult Function( String message)?  deleteError,TResult Function()?  deleteActionSuccess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case TodoLoading() when loading != null:
return loading();case TodoSuccess() when success != null:
return success(_that.todos);case TodoError() when error != null:
return error(_that.message);case TodoDeleteError() when deleteError != null:
return deleteError(_that.message);case TodoDeleteActionSuccess() when deleteActionSuccess != null:
return deleteActionSuccess();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<TaskResponseModel> todos)  success,required TResult Function( String message)  error,required TResult Function( String message)  deleteError,required TResult Function()  deleteActionSuccess,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case TodoLoading():
return loading();case TodoSuccess():
return success(_that.todos);case TodoError():
return error(_that.message);case TodoDeleteError():
return deleteError(_that.message);case TodoDeleteActionSuccess():
return deleteActionSuccess();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<TaskResponseModel> todos)?  success,TResult? Function( String message)?  error,TResult? Function( String message)?  deleteError,TResult? Function()?  deleteActionSuccess,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case TodoLoading() when loading != null:
return loading();case TodoSuccess() when success != null:
return success(_that.todos);case TodoError() when error != null:
return error(_that.message);case TodoDeleteError() when deleteError != null:
return deleteError(_that.message);case TodoDeleteActionSuccess() when deleteActionSuccess != null:
return deleteActionSuccess();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements TodoState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoState.initial()';
}


}




/// @nodoc


class TodoLoading implements TodoState {
  const TodoLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoState.loading()';
}


}




/// @nodoc


class TodoSuccess implements TodoState {
  const TodoSuccess(final  List<TaskResponseModel> todos): _todos = todos;
  

 final  List<TaskResponseModel> _todos;
 List<TaskResponseModel> get todos {
  if (_todos is EqualUnmodifiableListView) return _todos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_todos);
}


/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoSuccessCopyWith<TodoSuccess> get copyWith => _$TodoSuccessCopyWithImpl<TodoSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoSuccess&&const DeepCollectionEquality().equals(other._todos, _todos));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_todos));

@override
String toString() {
  return 'TodoState.success(todos: $todos)';
}


}

/// @nodoc
abstract mixin class $TodoSuccessCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory $TodoSuccessCopyWith(TodoSuccess value, $Res Function(TodoSuccess) _then) = _$TodoSuccessCopyWithImpl;
@useResult
$Res call({
 List<TaskResponseModel> todos
});




}
/// @nodoc
class _$TodoSuccessCopyWithImpl<$Res>
    implements $TodoSuccessCopyWith<$Res> {
  _$TodoSuccessCopyWithImpl(this._self, this._then);

  final TodoSuccess _self;
  final $Res Function(TodoSuccess) _then;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? todos = null,}) {
  return _then(TodoSuccess(
null == todos ? _self._todos : todos // ignore: cast_nullable_to_non_nullable
as List<TaskResponseModel>,
  ));
}


}

/// @nodoc


class TodoError implements TodoState {
  const TodoError(this.message);
  

 final  String message;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoErrorCopyWith<TodoError> get copyWith => _$TodoErrorCopyWithImpl<TodoError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TodoState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $TodoErrorCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory $TodoErrorCopyWith(TodoError value, $Res Function(TodoError) _then) = _$TodoErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$TodoErrorCopyWithImpl<$Res>
    implements $TodoErrorCopyWith<$Res> {
  _$TodoErrorCopyWithImpl(this._self, this._then);

  final TodoError _self;
  final $Res Function(TodoError) _then;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(TodoError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TodoDeleteError implements TodoState {
  const TodoDeleteError(this.message);
  

 final  String message;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoDeleteErrorCopyWith<TodoDeleteError> get copyWith => _$TodoDeleteErrorCopyWithImpl<TodoDeleteError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoDeleteError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TodoState.deleteError(message: $message)';
}


}

/// @nodoc
abstract mixin class $TodoDeleteErrorCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory $TodoDeleteErrorCopyWith(TodoDeleteError value, $Res Function(TodoDeleteError) _then) = _$TodoDeleteErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$TodoDeleteErrorCopyWithImpl<$Res>
    implements $TodoDeleteErrorCopyWith<$Res> {
  _$TodoDeleteErrorCopyWithImpl(this._self, this._then);

  final TodoDeleteError _self;
  final $Res Function(TodoDeleteError) _then;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(TodoDeleteError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TodoDeleteActionSuccess implements TodoState {
  const TodoDeleteActionSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoDeleteActionSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoState.deleteActionSuccess()';
}


}




// dart format on
