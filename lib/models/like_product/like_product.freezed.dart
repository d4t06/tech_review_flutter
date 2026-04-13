// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LikeProduct {

@JsonKey(name: "product_id") int get productId;@JsonKey(name: "user_id") int get userId;
/// Create a copy of LikeProduct
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LikeProductCopyWith<LikeProduct> get copyWith => _$LikeProductCopyWithImpl<LikeProduct>(this as LikeProduct, _$identity);

  /// Serializes this LikeProduct to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikeProduct&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,userId);

@override
String toString() {
  return 'LikeProduct(productId: $productId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $LikeProductCopyWith<$Res>  {
  factory $LikeProductCopyWith(LikeProduct value, $Res Function(LikeProduct) _then) = _$LikeProductCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "product_id") int productId,@JsonKey(name: "user_id") int userId
});




}
/// @nodoc
class _$LikeProductCopyWithImpl<$Res>
    implements $LikeProductCopyWith<$Res> {
  _$LikeProductCopyWithImpl(this._self, this._then);

  final LikeProduct _self;
  final $Res Function(LikeProduct) _then;

/// Create a copy of LikeProduct
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? userId = null,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [LikeProduct].
extension LikeProductPatterns on LikeProduct {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LikeProduct value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LikeProduct() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LikeProduct value)  $default,){
final _that = this;
switch (_that) {
case _LikeProduct():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LikeProduct value)?  $default,){
final _that = this;
switch (_that) {
case _LikeProduct() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "product_id")  int productId, @JsonKey(name: "user_id")  int userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LikeProduct() when $default != null:
return $default(_that.productId,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "product_id")  int productId, @JsonKey(name: "user_id")  int userId)  $default,) {final _that = this;
switch (_that) {
case _LikeProduct():
return $default(_that.productId,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "product_id")  int productId, @JsonKey(name: "user_id")  int userId)?  $default,) {final _that = this;
switch (_that) {
case _LikeProduct() when $default != null:
return $default(_that.productId,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LikeProduct implements LikeProduct {
  const _LikeProduct({@JsonKey(name: "product_id") required this.productId, @JsonKey(name: "user_id") required this.userId});
  factory _LikeProduct.fromJson(Map<String, dynamic> json) => _$LikeProductFromJson(json);

@override@JsonKey(name: "product_id") final  int productId;
@override@JsonKey(name: "user_id") final  int userId;

/// Create a copy of LikeProduct
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LikeProductCopyWith<_LikeProduct> get copyWith => __$LikeProductCopyWithImpl<_LikeProduct>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LikeProductToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LikeProduct&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,userId);

@override
String toString() {
  return 'LikeProduct(productId: $productId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$LikeProductCopyWith<$Res> implements $LikeProductCopyWith<$Res> {
  factory _$LikeProductCopyWith(_LikeProduct value, $Res Function(_LikeProduct) _then) = __$LikeProductCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "product_id") int productId,@JsonKey(name: "user_id") int userId
});




}
/// @nodoc
class __$LikeProductCopyWithImpl<$Res>
    implements _$LikeProductCopyWith<$Res> {
  __$LikeProductCopyWithImpl(this._self, this._then);

  final _LikeProduct _self;
  final $Res Function(_LikeProduct) _then;

/// Create a copy of LikeProduct
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? userId = null,}) {
  return _then(_LikeProduct(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
