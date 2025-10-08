// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_bottom_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NavigationBottomState {

 int get selectedIndexBody;
/// Create a copy of NavigationBottomState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NavigationBottomStateCopyWith<NavigationBottomState> get copyWith => _$NavigationBottomStateCopyWithImpl<NavigationBottomState>(this as NavigationBottomState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavigationBottomState&&(identical(other.selectedIndexBody, selectedIndexBody) || other.selectedIndexBody == selectedIndexBody));
}


@override
int get hashCode => Object.hash(runtimeType,selectedIndexBody);

@override
String toString() {
  return 'NavigationBottomState(selectedIndexBody: $selectedIndexBody)';
}


}

/// @nodoc
abstract mixin class $NavigationBottomStateCopyWith<$Res>  {
  factory $NavigationBottomStateCopyWith(NavigationBottomState value, $Res Function(NavigationBottomState) _then) = _$NavigationBottomStateCopyWithImpl;
@useResult
$Res call({
 int selectedIndexBody
});




}
/// @nodoc
class _$NavigationBottomStateCopyWithImpl<$Res>
    implements $NavigationBottomStateCopyWith<$Res> {
  _$NavigationBottomStateCopyWithImpl(this._self, this._then);

  final NavigationBottomState _self;
  final $Res Function(NavigationBottomState) _then;

/// Create a copy of NavigationBottomState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedIndexBody = null,}) {
  return _then(_self.copyWith(
selectedIndexBody: null == selectedIndexBody ? _self.selectedIndexBody : selectedIndexBody // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [NavigationBottomState].
extension NavigationBottomStatePatterns on NavigationBottomState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NavigationBottomState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NavigationBottomState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NavigationBottomState value)  $default,){
final _that = this;
switch (_that) {
case _NavigationBottomState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NavigationBottomState value)?  $default,){
final _that = this;
switch (_that) {
case _NavigationBottomState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int selectedIndexBody)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NavigationBottomState() when $default != null:
return $default(_that.selectedIndexBody);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int selectedIndexBody)  $default,) {final _that = this;
switch (_that) {
case _NavigationBottomState():
return $default(_that.selectedIndexBody);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int selectedIndexBody)?  $default,) {final _that = this;
switch (_that) {
case _NavigationBottomState() when $default != null:
return $default(_that.selectedIndexBody);case _:
  return null;

}
}

}

/// @nodoc


class _NavigationBottomState implements NavigationBottomState {
  const _NavigationBottomState({this.selectedIndexBody = 0});
  

@override@JsonKey() final  int selectedIndexBody;

/// Create a copy of NavigationBottomState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NavigationBottomStateCopyWith<_NavigationBottomState> get copyWith => __$NavigationBottomStateCopyWithImpl<_NavigationBottomState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NavigationBottomState&&(identical(other.selectedIndexBody, selectedIndexBody) || other.selectedIndexBody == selectedIndexBody));
}


@override
int get hashCode => Object.hash(runtimeType,selectedIndexBody);

@override
String toString() {
  return 'NavigationBottomState(selectedIndexBody: $selectedIndexBody)';
}


}

/// @nodoc
abstract mixin class _$NavigationBottomStateCopyWith<$Res> implements $NavigationBottomStateCopyWith<$Res> {
  factory _$NavigationBottomStateCopyWith(_NavigationBottomState value, $Res Function(_NavigationBottomState) _then) = __$NavigationBottomStateCopyWithImpl;
@override @useResult
$Res call({
 int selectedIndexBody
});




}
/// @nodoc
class __$NavigationBottomStateCopyWithImpl<$Res>
    implements _$NavigationBottomStateCopyWith<$Res> {
  __$NavigationBottomStateCopyWithImpl(this._self, this._then);

  final _NavigationBottomState _self;
  final $Res Function(_NavigationBottomState) _then;

/// Create a copy of NavigationBottomState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedIndexBody = null,}) {
  return _then(_NavigationBottomState(
selectedIndexBody: null == selectedIndexBody ? _self.selectedIndexBody : selectedIndexBody // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
