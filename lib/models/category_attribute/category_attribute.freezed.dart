// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_attribute.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryAttribute {

@JsonKey(name: "id") int get id;@JsonKey(name: "category_id") int get categoryId;@JsonKey(name: "attribute_name_ascii") String get attributeNameAscii;@JsonKey(name: "attribute_name") String get attributeName;@JsonKey(name: "represent") bool get represent;
/// Create a copy of CategoryAttribute
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryAttributeCopyWith<CategoryAttribute> get copyWith => _$CategoryAttributeCopyWithImpl<CategoryAttribute>(this as CategoryAttribute, _$identity);

  /// Serializes this CategoryAttribute to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryAttribute&&(identical(other.id, id) || other.id == id)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.attributeNameAscii, attributeNameAscii) || other.attributeNameAscii == attributeNameAscii)&&(identical(other.attributeName, attributeName) || other.attributeName == attributeName)&&(identical(other.represent, represent) || other.represent == represent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,categoryId,attributeNameAscii,attributeName,represent);

@override
String toString() {
  return 'CategoryAttribute(id: $id, categoryId: $categoryId, attributeNameAscii: $attributeNameAscii, attributeName: $attributeName, represent: $represent)';
}


}

/// @nodoc
abstract mixin class $CategoryAttributeCopyWith<$Res>  {
  factory $CategoryAttributeCopyWith(CategoryAttribute value, $Res Function(CategoryAttribute) _then) = _$CategoryAttributeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "category_id") int categoryId,@JsonKey(name: "attribute_name_ascii") String attributeNameAscii,@JsonKey(name: "attribute_name") String attributeName,@JsonKey(name: "represent") bool represent
});




}
/// @nodoc
class _$CategoryAttributeCopyWithImpl<$Res>
    implements $CategoryAttributeCopyWith<$Res> {
  _$CategoryAttributeCopyWithImpl(this._self, this._then);

  final CategoryAttribute _self;
  final $Res Function(CategoryAttribute) _then;

/// Create a copy of CategoryAttribute
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? categoryId = null,Object? attributeNameAscii = null,Object? attributeName = null,Object? represent = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,attributeNameAscii: null == attributeNameAscii ? _self.attributeNameAscii : attributeNameAscii // ignore: cast_nullable_to_non_nullable
as String,attributeName: null == attributeName ? _self.attributeName : attributeName // ignore: cast_nullable_to_non_nullable
as String,represent: null == represent ? _self.represent : represent // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryAttribute].
extension CategoryAttributePatterns on CategoryAttribute {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryAttribute value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryAttribute() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryAttribute value)  $default,){
final _that = this;
switch (_that) {
case _CategoryAttribute():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryAttribute value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryAttribute() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "category_id")  int categoryId, @JsonKey(name: "attribute_name_ascii")  String attributeNameAscii, @JsonKey(name: "attribute_name")  String attributeName, @JsonKey(name: "represent")  bool represent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryAttribute() when $default != null:
return $default(_that.id,_that.categoryId,_that.attributeNameAscii,_that.attributeName,_that.represent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "category_id")  int categoryId, @JsonKey(name: "attribute_name_ascii")  String attributeNameAscii, @JsonKey(name: "attribute_name")  String attributeName, @JsonKey(name: "represent")  bool represent)  $default,) {final _that = this;
switch (_that) {
case _CategoryAttribute():
return $default(_that.id,_that.categoryId,_that.attributeNameAscii,_that.attributeName,_that.represent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int id, @JsonKey(name: "category_id")  int categoryId, @JsonKey(name: "attribute_name_ascii")  String attributeNameAscii, @JsonKey(name: "attribute_name")  String attributeName, @JsonKey(name: "represent")  bool represent)?  $default,) {final _that = this;
switch (_that) {
case _CategoryAttribute() when $default != null:
return $default(_that.id,_that.categoryId,_that.attributeNameAscii,_that.attributeName,_that.represent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryAttribute implements CategoryAttribute {
  const _CategoryAttribute({@JsonKey(name: "id") required this.id, @JsonKey(name: "category_id") required this.categoryId, @JsonKey(name: "attribute_name_ascii") required this.attributeNameAscii, @JsonKey(name: "attribute_name") required this.attributeName, @JsonKey(name: "represent") required this.represent});
  factory _CategoryAttribute.fromJson(Map<String, dynamic> json) => _$CategoryAttributeFromJson(json);

@override@JsonKey(name: "id") final  int id;
@override@JsonKey(name: "category_id") final  int categoryId;
@override@JsonKey(name: "attribute_name_ascii") final  String attributeNameAscii;
@override@JsonKey(name: "attribute_name") final  String attributeName;
@override@JsonKey(name: "represent") final  bool represent;

/// Create a copy of CategoryAttribute
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryAttributeCopyWith<_CategoryAttribute> get copyWith => __$CategoryAttributeCopyWithImpl<_CategoryAttribute>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryAttributeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryAttribute&&(identical(other.id, id) || other.id == id)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.attributeNameAscii, attributeNameAscii) || other.attributeNameAscii == attributeNameAscii)&&(identical(other.attributeName, attributeName) || other.attributeName == attributeName)&&(identical(other.represent, represent) || other.represent == represent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,categoryId,attributeNameAscii,attributeName,represent);

@override
String toString() {
  return 'CategoryAttribute(id: $id, categoryId: $categoryId, attributeNameAscii: $attributeNameAscii, attributeName: $attributeName, represent: $represent)';
}


}

/// @nodoc
abstract mixin class _$CategoryAttributeCopyWith<$Res> implements $CategoryAttributeCopyWith<$Res> {
  factory _$CategoryAttributeCopyWith(_CategoryAttribute value, $Res Function(_CategoryAttribute) _then) = __$CategoryAttributeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "category_id") int categoryId,@JsonKey(name: "attribute_name_ascii") String attributeNameAscii,@JsonKey(name: "attribute_name") String attributeName,@JsonKey(name: "represent") bool represent
});




}
/// @nodoc
class __$CategoryAttributeCopyWithImpl<$Res>
    implements _$CategoryAttributeCopyWith<$Res> {
  __$CategoryAttributeCopyWithImpl(this._self, this._then);

  final _CategoryAttribute _self;
  final $Res Function(_CategoryAttribute) _then;

/// Create a copy of CategoryAttribute
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? categoryId = null,Object? attributeNameAscii = null,Object? attributeName = null,Object? represent = null,}) {
  return _then(_CategoryAttribute(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,attributeNameAscii: null == attributeNameAscii ? _self.attributeNameAscii : attributeNameAscii // ignore: cast_nullable_to_non_nullable
as String,attributeName: null == attributeName ? _self.attributeName : attributeName // ignore: cast_nullable_to_non_nullable
as String,represent: null == represent ? _self.represent : represent // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
