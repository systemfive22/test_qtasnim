// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EmployeeEvent {

 String? get search;
/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeEventCopyWith<EmployeeEvent> get copyWith => _$EmployeeEventCopyWithImpl<EmployeeEvent>(this as EmployeeEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeEvent&&(identical(other.search, search) || other.search == search));
}


@override
int get hashCode => Object.hash(runtimeType,search);

@override
String toString() {
  return 'EmployeeEvent(search: $search)';
}


}

/// @nodoc
abstract mixin class $EmployeeEventCopyWith<$Res>  {
  factory $EmployeeEventCopyWith(EmployeeEvent value, $Res Function(EmployeeEvent) _then) = _$EmployeeEventCopyWithImpl;
@useResult
$Res call({
 String? search
});




}
/// @nodoc
class _$EmployeeEventCopyWithImpl<$Res>
    implements $EmployeeEventCopyWith<$Res> {
  _$EmployeeEventCopyWithImpl(this._self, this._then);

  final EmployeeEvent _self;
  final $Res Function(EmployeeEvent) _then;

/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? search = freezed,}) {
  return _then(_self.copyWith(
search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EmployeeEvent].
extension EmployeeEventPatterns on EmployeeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetEmployee value)?  getEmployee,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetEmployee() when getEmployee != null:
return getEmployee(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetEmployee value)  getEmployee,}){
final _that = this;
switch (_that) {
case GetEmployee():
return getEmployee(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetEmployee value)?  getEmployee,}){
final _that = this;
switch (_that) {
case GetEmployee() when getEmployee != null:
return getEmployee(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? search)?  getEmployee,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetEmployee() when getEmployee != null:
return getEmployee(_that.search);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? search)  getEmployee,}) {final _that = this;
switch (_that) {
case GetEmployee():
return getEmployee(_that.search);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? search)?  getEmployee,}) {final _that = this;
switch (_that) {
case GetEmployee() when getEmployee != null:
return getEmployee(_that.search);case _:
  return null;

}
}

}

/// @nodoc


class GetEmployee implements EmployeeEvent {
  const GetEmployee({this.search});
  

@override final  String? search;

/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetEmployeeCopyWith<GetEmployee> get copyWith => _$GetEmployeeCopyWithImpl<GetEmployee>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetEmployee&&(identical(other.search, search) || other.search == search));
}


@override
int get hashCode => Object.hash(runtimeType,search);

@override
String toString() {
  return 'EmployeeEvent.getEmployee(search: $search)';
}


}

/// @nodoc
abstract mixin class $GetEmployeeCopyWith<$Res> implements $EmployeeEventCopyWith<$Res> {
  factory $GetEmployeeCopyWith(GetEmployee value, $Res Function(GetEmployee) _then) = _$GetEmployeeCopyWithImpl;
@override @useResult
$Res call({
 String? search
});




}
/// @nodoc
class _$GetEmployeeCopyWithImpl<$Res>
    implements $GetEmployeeCopyWith<$Res> {
  _$GetEmployeeCopyWithImpl(this._self, this._then);

  final GetEmployee _self;
  final $Res Function(GetEmployee) _then;

/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? search = freezed,}) {
  return _then(GetEmployee(
search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$EmployeeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmployeeState()';
}


}

/// @nodoc
class $EmployeeStateCopyWith<$Res>  {
$EmployeeStateCopyWith(EmployeeState _, $Res Function(EmployeeState) __);
}


/// Adds pattern-matching-related methods to [EmployeeState].
extension EmployeeStatePatterns on EmployeeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( EmployeeInitial value)?  initial,TResult Function( EmployeeLoadInProgress value)?  loadInProgress,TResult Function( EmployeeLoadSuccess value)?  loadSuccess,TResult Function( EmployeeLoadFailure value)?  loadFailure,TResult Function( EmployeeLoadEmpty value)?  loadEmpty,required TResult orElse(),}){
final _that = this;
switch (_that) {
case EmployeeInitial() when initial != null:
return initial(_that);case EmployeeLoadInProgress() when loadInProgress != null:
return loadInProgress(_that);case EmployeeLoadSuccess() when loadSuccess != null:
return loadSuccess(_that);case EmployeeLoadFailure() when loadFailure != null:
return loadFailure(_that);case EmployeeLoadEmpty() when loadEmpty != null:
return loadEmpty(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( EmployeeInitial value)  initial,required TResult Function( EmployeeLoadInProgress value)  loadInProgress,required TResult Function( EmployeeLoadSuccess value)  loadSuccess,required TResult Function( EmployeeLoadFailure value)  loadFailure,required TResult Function( EmployeeLoadEmpty value)  loadEmpty,}){
final _that = this;
switch (_that) {
case EmployeeInitial():
return initial(_that);case EmployeeLoadInProgress():
return loadInProgress(_that);case EmployeeLoadSuccess():
return loadSuccess(_that);case EmployeeLoadFailure():
return loadFailure(_that);case EmployeeLoadEmpty():
return loadEmpty(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( EmployeeInitial value)?  initial,TResult? Function( EmployeeLoadInProgress value)?  loadInProgress,TResult? Function( EmployeeLoadSuccess value)?  loadSuccess,TResult? Function( EmployeeLoadFailure value)?  loadFailure,TResult? Function( EmployeeLoadEmpty value)?  loadEmpty,}){
final _that = this;
switch (_that) {
case EmployeeInitial() when initial != null:
return initial(_that);case EmployeeLoadInProgress() when loadInProgress != null:
return loadInProgress(_that);case EmployeeLoadSuccess() when loadSuccess != null:
return loadSuccess(_that);case EmployeeLoadFailure() when loadFailure != null:
return loadFailure(_that);case EmployeeLoadEmpty() when loadEmpty != null:
return loadEmpty(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadInProgress,TResult Function( List<Employee> employees)?  loadSuccess,TResult Function( String message)?  loadFailure,TResult Function()?  loadEmpty,required TResult orElse(),}) {final _that = this;
switch (_that) {
case EmployeeInitial() when initial != null:
return initial();case EmployeeLoadInProgress() when loadInProgress != null:
return loadInProgress();case EmployeeLoadSuccess() when loadSuccess != null:
return loadSuccess(_that.employees);case EmployeeLoadFailure() when loadFailure != null:
return loadFailure(_that.message);case EmployeeLoadEmpty() when loadEmpty != null:
return loadEmpty();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadInProgress,required TResult Function( List<Employee> employees)  loadSuccess,required TResult Function( String message)  loadFailure,required TResult Function()  loadEmpty,}) {final _that = this;
switch (_that) {
case EmployeeInitial():
return initial();case EmployeeLoadInProgress():
return loadInProgress();case EmployeeLoadSuccess():
return loadSuccess(_that.employees);case EmployeeLoadFailure():
return loadFailure(_that.message);case EmployeeLoadEmpty():
return loadEmpty();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadInProgress,TResult? Function( List<Employee> employees)?  loadSuccess,TResult? Function( String message)?  loadFailure,TResult? Function()?  loadEmpty,}) {final _that = this;
switch (_that) {
case EmployeeInitial() when initial != null:
return initial();case EmployeeLoadInProgress() when loadInProgress != null:
return loadInProgress();case EmployeeLoadSuccess() when loadSuccess != null:
return loadSuccess(_that.employees);case EmployeeLoadFailure() when loadFailure != null:
return loadFailure(_that.message);case EmployeeLoadEmpty() when loadEmpty != null:
return loadEmpty();case _:
  return null;

}
}

}

/// @nodoc


class EmployeeInitial implements EmployeeState {
  const EmployeeInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmployeeState.initial()';
}


}




/// @nodoc


class EmployeeLoadInProgress implements EmployeeState {
  const EmployeeLoadInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeLoadInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmployeeState.loadInProgress()';
}


}




/// @nodoc


class EmployeeLoadSuccess implements EmployeeState {
  const EmployeeLoadSuccess({required final  List<Employee> employees}): _employees = employees;
  

 final  List<Employee> _employees;
 List<Employee> get employees {
  if (_employees is EqualUnmodifiableListView) return _employees;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_employees);
}


/// Create a copy of EmployeeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeLoadSuccessCopyWith<EmployeeLoadSuccess> get copyWith => _$EmployeeLoadSuccessCopyWithImpl<EmployeeLoadSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeLoadSuccess&&const DeepCollectionEquality().equals(other._employees, _employees));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_employees));

@override
String toString() {
  return 'EmployeeState.loadSuccess(employees: $employees)';
}


}

/// @nodoc
abstract mixin class $EmployeeLoadSuccessCopyWith<$Res> implements $EmployeeStateCopyWith<$Res> {
  factory $EmployeeLoadSuccessCopyWith(EmployeeLoadSuccess value, $Res Function(EmployeeLoadSuccess) _then) = _$EmployeeLoadSuccessCopyWithImpl;
@useResult
$Res call({
 List<Employee> employees
});




}
/// @nodoc
class _$EmployeeLoadSuccessCopyWithImpl<$Res>
    implements $EmployeeLoadSuccessCopyWith<$Res> {
  _$EmployeeLoadSuccessCopyWithImpl(this._self, this._then);

  final EmployeeLoadSuccess _self;
  final $Res Function(EmployeeLoadSuccess) _then;

/// Create a copy of EmployeeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? employees = null,}) {
  return _then(EmployeeLoadSuccess(
employees: null == employees ? _self._employees : employees // ignore: cast_nullable_to_non_nullable
as List<Employee>,
  ));
}


}

/// @nodoc


class EmployeeLoadFailure implements EmployeeState {
  const EmployeeLoadFailure({required this.message});
  

 final  String message;

/// Create a copy of EmployeeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeLoadFailureCopyWith<EmployeeLoadFailure> get copyWith => _$EmployeeLoadFailureCopyWithImpl<EmployeeLoadFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeLoadFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'EmployeeState.loadFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $EmployeeLoadFailureCopyWith<$Res> implements $EmployeeStateCopyWith<$Res> {
  factory $EmployeeLoadFailureCopyWith(EmployeeLoadFailure value, $Res Function(EmployeeLoadFailure) _then) = _$EmployeeLoadFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$EmployeeLoadFailureCopyWithImpl<$Res>
    implements $EmployeeLoadFailureCopyWith<$Res> {
  _$EmployeeLoadFailureCopyWithImpl(this._self, this._then);

  final EmployeeLoadFailure _self;
  final $Res Function(EmployeeLoadFailure) _then;

/// Create a copy of EmployeeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(EmployeeLoadFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class EmployeeLoadEmpty implements EmployeeState {
  const EmployeeLoadEmpty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeLoadEmpty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmployeeState.loadEmpty()';
}


}




// dart format on
