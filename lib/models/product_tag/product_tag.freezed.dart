// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductTag {

@JsonKey(name: "product_id") int get productId;@JsonKey(name: "tag_id") int get tagId;@JsonKey(name: "tag") Tag get tag;
/// Create a copy of ProductTag
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductTagCopyWith<ProductTag> get copyWith => _$ProductTagCopyWithImpl<ProductTag>(this as ProductTag, _$identity);

  /// Serializes this ProductTag to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductTag&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.tagId, tagId) || other.tagId == tagId)&&(identical(other.tag, tag) || other.tag == tag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,tagId,tag);

@override
String toString() {
  return 'ProductTag(productId: $productId, tagId: $tagId, tag: $tag)';
}


}

/// @nodoc
abstract mixin class $ProductTagCopyWith<$Res>  {
  factory $ProductTagCopyWith(ProductTag value, $Res Function(ProductTag) _then) = _$ProductTagCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "product_id") int productId,@JsonKey(name: "tag_id") int tagId,@JsonKey(name: "tag") Tag tag
});


$TagCopyWith<$Res> get tag;

}
/// @nodoc
class _$ProductTagCopyWithImpl<$Res>
    implements $ProductTagCopyWith<$Res> {
  _$ProductTagCopyWithImpl(this._self, this._then);

  final ProductTag _self;
  final $Res Function(ProductTag) _then;

/// Create a copy of ProductTag
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? tagId = null,Object? tag = null,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,tagId: null == tagId ? _self.tagId : tagId // ignore: cast_nullable_to_non_nullable
as int,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as Tag,
  ));
}
/// Create a copy of ProductTag
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TagCopyWith<$Res> get tag {
  
  return $TagCopyWith<$Res>(_self.tag, (value) {
    return _then(_self.copyWith(tag: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductTag].
extension ProductTagPatterns on ProductTag {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductTag value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductTag() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductTag value)  $default,){
final _that = this;
switch (_that) {
case _ProductTag():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductTag value)?  $default,){
final _that = this;
switch (_that) {
case _ProductTag() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "product_id")  int productId, @JsonKey(name: "tag_id")  int tagId, @JsonKey(name: "tag")  Tag tag)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductTag() when $default != null:
return $default(_that.productId,_that.tagId,_that.tag);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "product_id")  int productId, @JsonKey(name: "tag_id")  int tagId, @JsonKey(name: "tag")  Tag tag)  $default,) {final _that = this;
switch (_that) {
case _ProductTag():
return $default(_that.productId,_that.tagId,_that.tag);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "product_id")  int productId, @JsonKey(name: "tag_id")  int tagId, @JsonKey(name: "tag")  Tag tag)?  $default,) {final _that = this;
switch (_that) {
case _ProductTag() when $default != null:
return $default(_that.productId,_that.tagId,_that.tag);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductTag implements ProductTag {
  const _ProductTag({@JsonKey(name: "product_id") required this.productId, @JsonKey(name: "tag_id") required this.tagId, @JsonKey(name: "tag") required this.tag});
  factory _ProductTag.fromJson(Map<String, dynamic> json) => _$ProductTagFromJson(json);

@override@JsonKey(name: "product_id") final  int productId;
@override@JsonKey(name: "tag_id") final  int tagId;
@override@JsonKey(name: "tag") final  Tag tag;

/// Create a copy of ProductTag
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductTagCopyWith<_ProductTag> get copyWith => __$ProductTagCopyWithImpl<_ProductTag>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductTagToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductTag&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.tagId, tagId) || other.tagId == tagId)&&(identical(other.tag, tag) || other.tag == tag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,tagId,tag);

@override
String toString() {
  return 'ProductTag(productId: $productId, tagId: $tagId, tag: $tag)';
}


}

/// @nodoc
abstract mixin class _$ProductTagCopyWith<$Res> implements $ProductTagCopyWith<$Res> {
  factory _$ProductTagCopyWith(_ProductTag value, $Res Function(_ProductTag) _then) = __$ProductTagCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "product_id") int productId,@JsonKey(name: "tag_id") int tagId,@JsonKey(name: "tag") Tag tag
});


@override $TagCopyWith<$Res> get tag;

}
/// @nodoc
class __$ProductTagCopyWithImpl<$Res>
    implements _$ProductTagCopyWith<$Res> {
  __$ProductTagCopyWithImpl(this._self, this._then);

  final _ProductTag _self;
  final $Res Function(_ProductTag) _then;

/// Create a copy of ProductTag
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? tagId = null,Object? tag = null,}) {
  return _then(_ProductTag(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,tagId: null == tagId ? _self.tagId : tagId // ignore: cast_nullable_to_non_nullable
as int,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as Tag,
  ));
}

/// Create a copy of ProductTag
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TagCopyWith<$Res> get tag {
  
  return $TagCopyWith<$Res>(_self.tag, (value) {
    return _then(_self.copyWith(tag: value));
  });
}
}

// dart format on
