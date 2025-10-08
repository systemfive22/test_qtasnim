// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_employee_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddEmployeeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddEmployeeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddEmployeeEvent()';
}


}

/// @nodoc
class $AddEmployeeEventCopyWith<$Res>  {
$AddEmployeeEventCopyWith(AddEmployeeEvent _, $Res Function(AddEmployeeEvent) __);
}


/// Adds pattern-matching-related methods to [AddEmployeeEvent].
extension AddEmployeeEventPatterns on AddEmployeeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( EmployeeAdded value)?  employeeAdded,TResult Function( EmployeeUpdated value)?  employeeUpdated,TResult Function( EmployeeDeleted value)?  employeeDeleted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case EmployeeAdded() when employeeAdded != null:
return employeeAdded(_that);case EmployeeUpdated() when employeeUpdated != null:
return employeeUpdated(_that);case EmployeeDeleted() when employeeDeleted != null:
return employeeDeleted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( EmployeeAdded value)  employeeAdded,required TResult Function( EmployeeUpdated value)  employeeUpdated,required TResult Function( EmployeeDeleted value)  employeeDeleted,}){
final _that = this;
switch (_that) {
case EmployeeAdded():
return employeeAdded(_that);case EmployeeUpdated():
return employeeUpdated(_that);case EmployeeDeleted():
return employeeDeleted(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( EmployeeAdded value)?  employeeAdded,TResult? Function( EmployeeUpdated value)?  employeeUpdated,TResult? Function( EmployeeDeleted value)?  employeeDeleted,}){
final _that = this;
switch (_that) {
case EmployeeAdded() when employeeAdded != null:
return employeeAdded(_that);case EmployeeUpdated() when employeeUpdated != null:
return employeeUpdated(_that);case EmployeeDeleted() when employeeDeleted != null:
return employeeDeleted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String name,  String position,  int salary,  String address,  String phone)?  employeeAdded,TResult Function( int id,  String name,  String position,  int salary,  String address,  String phone)?  employeeUpdated,TResult Function( int id)?  employeeDeleted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case EmployeeAdded() when employeeAdded != null:
return employeeAdded(_that.name,_that.position,_that.salary,_that.address,_that.phone);case EmployeeUpdated() when employeeUpdated != null:
return employeeUpdated(_that.id,_that.name,_that.position,_that.salary,_that.address,_that.phone);case EmployeeDeleted() when employeeDeleted != null:
return employeeDeleted(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String name,  String position,  int salary,  String address,  String phone)  employeeAdded,required TResult Function( int id,  String name,  String position,  int salary,  String address,  String phone)  employeeUpdated,required TResult Function( int id)  employeeDeleted,}) {final _that = this;
switch (_that) {
case EmployeeAdded():
return employeeAdded(_that.name,_that.position,_that.salary,_that.address,_that.phone);case EmployeeUpdated():
return employeeUpdated(_that.id,_that.name,_that.position,_that.salary,_that.address,_that.phone);case EmployeeDeleted():
return employeeDeleted(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String name,  String position,  int salary,  String address,  String phone)?  employeeAdded,TResult? Function( int id,  String name,  String position,  int salary,  String address,  String phone)?  employeeUpdated,TResult? Function( int id)?  employeeDeleted,}) {final _that = this;
switch (_that) {
case EmployeeAdded() when employeeAdded != null:
return employeeAdded(_that.name,_that.position,_that.salary,_that.address,_that.phone);case EmployeeUpdated() when employeeUpdated != null:
return employeeUpdated(_that.id,_that.name,_that.position,_that.salary,_that.address,_that.phone);case EmployeeDeleted() when employeeDeleted != null:
return employeeDeleted(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class EmployeeAdded implements AddEmployeeEvent {
  const EmployeeAdded({required this.name, required this.position, required this.salary, required this.address, required this.phone});
  

 final  String name;
 final  String position;
 final  int salary;
 final  String address;
 final  String phone;

/// Create a copy of AddEmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeAddedCopyWith<EmployeeAdded> get copyWith => _$EmployeeAddedCopyWithImpl<EmployeeAdded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeAdded&&(identical(other.name, name) || other.name == name)&&(identical(other.position, position) || other.position == position)&&(identical(other.salary, salary) || other.salary == salary)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,name,position,salary,address,phone);

@override
String toString() {
  return 'AddEmployeeEvent.employeeAdded(name: $name, position: $position, salary: $salary, address: $address, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $EmployeeAddedCopyWith<$Res> implements $AddEmployeeEventCopyWith<$Res> {
  factory $EmployeeAddedCopyWith(EmployeeAdded value, $Res Function(EmployeeAdded) _then) = _$EmployeeAddedCopyWithImpl;
@useResult
$Res call({
 String name, String position, int salary, String address, String phone
});




}
/// @nodoc
class _$EmployeeAddedCopyWithImpl<$Res>
    implements $EmployeeAddedCopyWith<$Res> {
  _$EmployeeAddedCopyWithImpl(this._self, this._then);

  final EmployeeAdded _self;
  final $Res Function(EmployeeAdded) _then;

/// Create a copy of AddEmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? position = null,Object? salary = null,Object? address = null,Object? phone = null,}) {
  return _then(EmployeeAdded(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,salary: null == salary ? _self.salary : salary // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class EmployeeUpdated implements AddEmployeeEvent {
  const EmployeeUpdated({required this.id, required this.name, required this.position, required this.salary, required this.address, required this.phone});
  

 final  int id;
 final  String name;
 final  String position;
 final  int salary;
 final  String address;
 final  String phone;

/// Create a copy of AddEmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeUpdatedCopyWith<EmployeeUpdated> get copyWith => _$EmployeeUpdatedCopyWithImpl<EmployeeUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeUpdated&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.position, position) || other.position == position)&&(identical(other.salary, salary) || other.salary == salary)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,position,salary,address,phone);

@override
String toString() {
  return 'AddEmployeeEvent.employeeUpdated(id: $id, name: $name, position: $position, salary: $salary, address: $address, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $EmployeeUpdatedCopyWith<$Res> implements $AddEmployeeEventCopyWith<$Res> {
  factory $EmployeeUpdatedCopyWith(EmployeeUpdated value, $Res Function(EmployeeUpdated) _then) = _$EmployeeUpdatedCopyWithImpl;
@useResult
$Res call({
 int id, String name, String position, int salary, String address, String phone
});




}
/// @nodoc
class _$EmployeeUpdatedCopyWithImpl<$Res>
    implements $EmployeeUpdatedCopyWith<$Res> {
  _$EmployeeUpdatedCopyWithImpl(this._self, this._then);

  final EmployeeUpdated _self;
  final $Res Function(EmployeeUpdated) _then;

/// Create a copy of AddEmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? position = null,Object? salary = null,Object? address = null,Object? phone = null,}) {
  return _then(EmployeeUpdated(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,salary: null == salary ? _self.salary : salary // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class EmployeeDeleted implements AddEmployeeEvent {
  const EmployeeDeleted({required this.id});
  

 final  int id;

/// Create a copy of AddEmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeDeletedCopyWith<EmployeeDeleted> get copyWith => _$EmployeeDeletedCopyWithImpl<EmployeeDeleted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeDeleted&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'AddEmployeeEvent.employeeDeleted(id: $id)';
}


}

/// @nodoc
abstract mixin class $EmployeeDeletedCopyWith<$Res> implements $AddEmployeeEventCopyWith<$Res> {
  factory $EmployeeDeletedCopyWith(EmployeeDeleted value, $Res Function(EmployeeDeleted) _then) = _$EmployeeDeletedCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$EmployeeDeletedCopyWithImpl<$Res>
    implements $EmployeeDeletedCopyWith<$Res> {
  _$EmployeeDeletedCopyWithImpl(this._self, this._then);

  final EmployeeDeleted _self;
  final $Res Function(EmployeeDeleted) _then;

/// Create a copy of AddEmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(EmployeeDeleted(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$AddEmployeeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddEmployeeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddEmployeeState()';
}


}

/// @nodoc
class $AddEmployeeStateCopyWith<$Res>  {
$AddEmployeeStateCopyWith(AddEmployeeState _, $Res Function(AddEmployeeState) __);
}


/// Adds pattern-matching-related methods to [AddEmployeeState].
extension AddEmployeeStatePatterns on AddEmployeeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( AddLoading value)?  addLoading,TResult Function( AddSuccess value)?  addSuccess,TResult Function( AddError value)?  addError,TResult Function( EditLoading value)?  editLoading,TResult Function( EditSuccess value)?  editSuccess,TResult Function( EditError value)?  editError,TResult Function( DeleteLoading value)?  deleteLoading,TResult Function( DeleteSuccess value)?  deleteSuccess,TResult Function( DeleteError value)?  deleteError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case AddLoading() when addLoading != null:
return addLoading(_that);case AddSuccess() when addSuccess != null:
return addSuccess(_that);case AddError() when addError != null:
return addError(_that);case EditLoading() when editLoading != null:
return editLoading(_that);case EditSuccess() when editSuccess != null:
return editSuccess(_that);case EditError() when editError != null:
return editError(_that);case DeleteLoading() when deleteLoading != null:
return deleteLoading(_that);case DeleteSuccess() when deleteSuccess != null:
return deleteSuccess(_that);case DeleteError() when deleteError != null:
return deleteError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( AddLoading value)  addLoading,required TResult Function( AddSuccess value)  addSuccess,required TResult Function( AddError value)  addError,required TResult Function( EditLoading value)  editLoading,required TResult Function( EditSuccess value)  editSuccess,required TResult Function( EditError value)  editError,required TResult Function( DeleteLoading value)  deleteLoading,required TResult Function( DeleteSuccess value)  deleteSuccess,required TResult Function( DeleteError value)  deleteError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case AddLoading():
return addLoading(_that);case AddSuccess():
return addSuccess(_that);case AddError():
return addError(_that);case EditLoading():
return editLoading(_that);case EditSuccess():
return editSuccess(_that);case EditError():
return editError(_that);case DeleteLoading():
return deleteLoading(_that);case DeleteSuccess():
return deleteSuccess(_that);case DeleteError():
return deleteError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( AddLoading value)?  addLoading,TResult? Function( AddSuccess value)?  addSuccess,TResult? Function( AddError value)?  addError,TResult? Function( EditLoading value)?  editLoading,TResult? Function( EditSuccess value)?  editSuccess,TResult? Function( EditError value)?  editError,TResult? Function( DeleteLoading value)?  deleteLoading,TResult? Function( DeleteSuccess value)?  deleteSuccess,TResult? Function( DeleteError value)?  deleteError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case AddLoading() when addLoading != null:
return addLoading(_that);case AddSuccess() when addSuccess != null:
return addSuccess(_that);case AddError() when addError != null:
return addError(_that);case EditLoading() when editLoading != null:
return editLoading(_that);case EditSuccess() when editSuccess != null:
return editSuccess(_that);case EditError() when editError != null:
return editError(_that);case DeleteLoading() when deleteLoading != null:
return deleteLoading(_that);case DeleteSuccess() when deleteSuccess != null:
return deleteSuccess(_that);case DeleteError() when deleteError != null:
return deleteError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  addLoading,TResult Function( String? message)?  addSuccess,TResult Function( String? errorMessage)?  addError,TResult Function()?  editLoading,TResult Function( String? message)?  editSuccess,TResult Function( String? errorMessage)?  editError,TResult Function()?  deleteLoading,TResult Function( String? message)?  deleteSuccess,TResult Function( String? errorMessage)?  deleteError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case AddLoading() when addLoading != null:
return addLoading();case AddSuccess() when addSuccess != null:
return addSuccess(_that.message);case AddError() when addError != null:
return addError(_that.errorMessage);case EditLoading() when editLoading != null:
return editLoading();case EditSuccess() when editSuccess != null:
return editSuccess(_that.message);case EditError() when editError != null:
return editError(_that.errorMessage);case DeleteLoading() when deleteLoading != null:
return deleteLoading();case DeleteSuccess() when deleteSuccess != null:
return deleteSuccess(_that.message);case DeleteError() when deleteError != null:
return deleteError(_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  addLoading,required TResult Function( String? message)  addSuccess,required TResult Function( String? errorMessage)  addError,required TResult Function()  editLoading,required TResult Function( String? message)  editSuccess,required TResult Function( String? errorMessage)  editError,required TResult Function()  deleteLoading,required TResult Function( String? message)  deleteSuccess,required TResult Function( String? errorMessage)  deleteError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case AddLoading():
return addLoading();case AddSuccess():
return addSuccess(_that.message);case AddError():
return addError(_that.errorMessage);case EditLoading():
return editLoading();case EditSuccess():
return editSuccess(_that.message);case EditError():
return editError(_that.errorMessage);case DeleteLoading():
return deleteLoading();case DeleteSuccess():
return deleteSuccess(_that.message);case DeleteError():
return deleteError(_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  addLoading,TResult? Function( String? message)?  addSuccess,TResult? Function( String? errorMessage)?  addError,TResult? Function()?  editLoading,TResult? Function( String? message)?  editSuccess,TResult? Function( String? errorMessage)?  editError,TResult? Function()?  deleteLoading,TResult? Function( String? message)?  deleteSuccess,TResult? Function( String? errorMessage)?  deleteError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case AddLoading() when addLoading != null:
return addLoading();case AddSuccess() when addSuccess != null:
return addSuccess(_that.message);case AddError() when addError != null:
return addError(_that.errorMessage);case EditLoading() when editLoading != null:
return editLoading();case EditSuccess() when editSuccess != null:
return editSuccess(_that.message);case EditError() when editError != null:
return editError(_that.errorMessage);case DeleteLoading() when deleteLoading != null:
return deleteLoading();case DeleteSuccess() when deleteSuccess != null:
return deleteSuccess(_that.message);case DeleteError() when deleteError != null:
return deleteError(_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AddEmployeeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddEmployeeState.initial()';
}


}




/// @nodoc


class AddLoading implements AddEmployeeState {
  const AddLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddEmployeeState.addLoading()';
}


}




/// @nodoc


class AddSuccess implements AddEmployeeState {
  const AddSuccess({this.message});
  

 final  String? message;

/// Create a copy of AddEmployeeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddSuccessCopyWith<AddSuccess> get copyWith => _$AddSuccessCopyWithImpl<AddSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AddEmployeeState.addSuccess(message: $message)';
}


}

/// @nodoc
abstract mixin class $AddSuccessCopyWith<$Res> implements $AddEmployeeStateCopyWith<$Res> {
  factory $AddSuccessCopyWith(AddSuccess value, $Res Function(AddSuccess) _then) = _$AddSuccessCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$AddSuccessCopyWithImpl<$Res>
    implements $AddSuccessCopyWith<$Res> {
  _$AddSuccessCopyWithImpl(this._self, this._then);

  final AddSuccess _self;
  final $Res Function(AddSuccess) _then;

/// Create a copy of AddEmployeeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(AddSuccess(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class AddError implements AddEmployeeState {
  const AddError({this.errorMessage});
  

 final  String? errorMessage;

/// Create a copy of AddEmployeeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddErrorCopyWith<AddError> get copyWith => _$AddErrorCopyWithImpl<AddError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddError&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'AddEmployeeState.addError(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $AddErrorCopyWith<$Res> implements $AddEmployeeStateCopyWith<$Res> {
  factory $AddErrorCopyWith(AddError value, $Res Function(AddError) _then) = _$AddErrorCopyWithImpl;
@useResult
$Res call({
 String? errorMessage
});




}
/// @nodoc
class _$AddErrorCopyWithImpl<$Res>
    implements $AddErrorCopyWith<$Res> {
  _$AddErrorCopyWithImpl(this._self, this._then);

  final AddError _self;
  final $Res Function(AddError) _then;

/// Create a copy of AddEmployeeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = freezed,}) {
  return _then(AddError(
errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class EditLoading implements AddEmployeeState {
  const EditLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddEmployeeState.editLoading()';
}


}




/// @nodoc


class EditSuccess implements AddEmployeeState {
  const EditSuccess({this.message});
  

 final  String? message;

/// Create a copy of AddEmployeeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditSuccessCopyWith<EditSuccess> get copyWith => _$EditSuccessCopyWithImpl<EditSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AddEmployeeState.editSuccess(message: $message)';
}


}

/// @nodoc
abstract mixin class $EditSuccessCopyWith<$Res> implements $AddEmployeeStateCopyWith<$Res> {
  factory $EditSuccessCopyWith(EditSuccess value, $Res Function(EditSuccess) _then) = _$EditSuccessCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$EditSuccessCopyWithImpl<$Res>
    implements $EditSuccessCopyWith<$Res> {
  _$EditSuccessCopyWithImpl(this._self, this._then);

  final EditSuccess _self;
  final $Res Function(EditSuccess) _then;

/// Create a copy of AddEmployeeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(EditSuccess(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class EditError implements AddEmployeeState {
  const EditError({this.errorMessage});
  

 final  String? errorMessage;

/// Create a copy of AddEmployeeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditErrorCopyWith<EditError> get copyWith => _$EditErrorCopyWithImpl<EditError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditError&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'AddEmployeeState.editError(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $EditErrorCopyWith<$Res> implements $AddEmployeeStateCopyWith<$Res> {
  factory $EditErrorCopyWith(EditError value, $Res Function(EditError) _then) = _$EditErrorCopyWithImpl;
@useResult
$Res call({
 String? errorMessage
});




}
/// @nodoc
class _$EditErrorCopyWithImpl<$Res>
    implements $EditErrorCopyWith<$Res> {
  _$EditErrorCopyWithImpl(this._self, this._then);

  final EditError _self;
  final $Res Function(EditError) _then;

/// Create a copy of AddEmployeeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = freezed,}) {
  return _then(EditError(
errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class DeleteLoading implements AddEmployeeState {
  const DeleteLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddEmployeeState.deleteLoading()';
}


}




/// @nodoc


class DeleteSuccess implements AddEmployeeState {
  const DeleteSuccess({this.message});
  

 final  String? message;

/// Create a copy of AddEmployeeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteSuccessCopyWith<DeleteSuccess> get copyWith => _$DeleteSuccessCopyWithImpl<DeleteSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AddEmployeeState.deleteSuccess(message: $message)';
}


}

/// @nodoc
abstract mixin class $DeleteSuccessCopyWith<$Res> implements $AddEmployeeStateCopyWith<$Res> {
  factory $DeleteSuccessCopyWith(DeleteSuccess value, $Res Function(DeleteSuccess) _then) = _$DeleteSuccessCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$DeleteSuccessCopyWithImpl<$Res>
    implements $DeleteSuccessCopyWith<$Res> {
  _$DeleteSuccessCopyWithImpl(this._self, this._then);

  final DeleteSuccess _self;
  final $Res Function(DeleteSuccess) _then;

/// Create a copy of AddEmployeeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(DeleteSuccess(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class DeleteError implements AddEmployeeState {
  const DeleteError({this.errorMessage});
  

 final  String? errorMessage;

/// Create a copy of AddEmployeeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteErrorCopyWith<DeleteError> get copyWith => _$DeleteErrorCopyWithImpl<DeleteError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteError&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'AddEmployeeState.deleteError(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $DeleteErrorCopyWith<$Res> implements $AddEmployeeStateCopyWith<$Res> {
  factory $DeleteErrorCopyWith(DeleteError value, $Res Function(DeleteError) _then) = _$DeleteErrorCopyWithImpl;
@useResult
$Res call({
 String? errorMessage
});




}
/// @nodoc
class _$DeleteErrorCopyWithImpl<$Res>
    implements $DeleteErrorCopyWith<$Res> {
  _$DeleteErrorCopyWithImpl(this._self, this._then);

  final DeleteError _self;
  final $Res Function(DeleteError) _then;

/// Create a copy of AddEmployeeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = freezed,}) {
  return _then(DeleteError(
errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
