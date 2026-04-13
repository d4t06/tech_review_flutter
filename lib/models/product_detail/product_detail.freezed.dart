// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductDetail {

@JsonKey(name: "id") int get id;@JsonKey(name: "product_name") String get productName;@JsonKey(name: "product_name_ascii") String get productNameAscii;@JsonKey(name: "image_url") String get imageUrl;@JsonKey(name: "category_id") int get categoryId;@JsonKey(name: "brand_id") int get brandId;@JsonKey(name: "created_at") DateTime get createdAt;@JsonKey(name: "features") List<Feature> get features;@JsonKey(name: "attributes") List<ProductAttribute> get attributes;@JsonKey(name: "description") Description get description;@JsonKey(name: "product_tags") List<ProductTag> get productTags;
/// Create a copy of ProductDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDetailCopyWith<ProductDetail> get copyWith => _$ProductDetailCopyWithImpl<ProductDetail>(this as ProductDetail, _$identity);

  /// Serializes this ProductDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productNameAscii, productNameAscii) || other.productNameAscii == productNameAscii)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.features, features)&&const DeepCollectionEquality().equals(other.attributes, attributes)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.productTags, productTags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productName,productNameAscii,imageUrl,categoryId,brandId,createdAt,const DeepCollectionEquality().hash(features),const DeepCollectionEquality().hash(attributes),description,const DeepCollectionEquality().hash(productTags));

@override
String toString() {
  return 'ProductDetail(id: $id, productName: $productName, productNameAscii: $productNameAscii, imageUrl: $imageUrl, categoryId: $categoryId, brandId: $brandId, createdAt: $createdAt, features: $features, attributes: $attributes, description: $description, productTags: $productTags)';
}


}

/// @nodoc
abstract mixin class $ProductDetailCopyWith<$Res>  {
  factory $ProductDetailCopyWith(ProductDetail value, $Res Function(ProductDetail) _then) = _$ProductDetailCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "product_name") String productName,@JsonKey(name: "product_name_ascii") String productNameAscii,@JsonKey(name: "image_url") String imageUrl,@JsonKey(name: "category_id") int categoryId,@JsonKey(name: "brand_id") int brandId,@JsonKey(name: "created_at") DateTime createdAt,@JsonKey(name: "features") List<Feature> features,@JsonKey(name: "attributes") List<ProductAttribute> attributes,@JsonKey(name: "description") Description description,@JsonKey(name: "product_tags") List<ProductTag> productTags
});


$DescriptionCopyWith<$Res> get description;

}
/// @nodoc
class _$ProductDetailCopyWithImpl<$Res>
    implements $ProductDetailCopyWith<$Res> {
  _$ProductDetailCopyWithImpl(this._self, this._then);

  final ProductDetail _self;
  final $Res Function(ProductDetail) _then;

/// Create a copy of ProductDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productName = null,Object? productNameAscii = null,Object? imageUrl = null,Object? categoryId = null,Object? brandId = null,Object? createdAt = null,Object? features = null,Object? attributes = null,Object? description = null,Object? productTags = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,productNameAscii: null == productNameAscii ? _self.productNameAscii : productNameAscii // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,brandId: null == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,features: null == features ? _self.features : features // ignore: cast_nullable_to_non_nullable
as List<Feature>,attributes: null == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as List<ProductAttribute>,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as Description,productTags: null == productTags ? _self.productTags : productTags // ignore: cast_nullable_to_non_nullable
as List<ProductTag>,
  ));
}
/// Create a copy of ProductDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DescriptionCopyWith<$Res> get description {
  
  return $DescriptionCopyWith<$Res>(_self.description, (value) {
    return _then(_self.copyWith(description: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductDetail].
extension ProductDetailPatterns on ProductDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductDetail value)  $default,){
final _that = this;
switch (_that) {
case _ProductDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductDetail value)?  $default,){
final _that = this;
switch (_that) {
case _ProductDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "product_name")  String productName, @JsonKey(name: "product_name_ascii")  String productNameAscii, @JsonKey(name: "image_url")  String imageUrl, @JsonKey(name: "category_id")  int categoryId, @JsonKey(name: "brand_id")  int brandId, @JsonKey(name: "created_at")  DateTime createdAt, @JsonKey(name: "features")  List<Feature> features, @JsonKey(name: "attributes")  List<ProductAttribute> attributes, @JsonKey(name: "description")  Description description, @JsonKey(name: "product_tags")  List<ProductTag> productTags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDetail() when $default != null:
return $default(_that.id,_that.productName,_that.productNameAscii,_that.imageUrl,_that.categoryId,_that.brandId,_that.createdAt,_that.features,_that.attributes,_that.description,_that.productTags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "product_name")  String productName, @JsonKey(name: "product_name_ascii")  String productNameAscii, @JsonKey(name: "image_url")  String imageUrl, @JsonKey(name: "category_id")  int categoryId, @JsonKey(name: "brand_id")  int brandId, @JsonKey(name: "created_at")  DateTime createdAt, @JsonKey(name: "features")  List<Feature> features, @JsonKey(name: "attributes")  List<ProductAttribute> attributes, @JsonKey(name: "description")  Description description, @JsonKey(name: "product_tags")  List<ProductTag> productTags)  $default,) {final _that = this;
switch (_that) {
case _ProductDetail():
return $default(_that.id,_that.productName,_that.productNameAscii,_that.imageUrl,_that.categoryId,_that.brandId,_that.createdAt,_that.features,_that.attributes,_that.description,_that.productTags);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int id, @JsonKey(name: "product_name")  String productName, @JsonKey(name: "product_name_ascii")  String productNameAscii, @JsonKey(name: "image_url")  String imageUrl, @JsonKey(name: "category_id")  int categoryId, @JsonKey(name: "brand_id")  int brandId, @JsonKey(name: "created_at")  DateTime createdAt, @JsonKey(name: "features")  List<Feature> features, @JsonKey(name: "attributes")  List<ProductAttribute> attributes, @JsonKey(name: "description")  Description description, @JsonKey(name: "product_tags")  List<ProductTag> productTags)?  $default,) {final _that = this;
switch (_that) {
case _ProductDetail() when $default != null:
return $default(_that.id,_that.productName,_that.productNameAscii,_that.imageUrl,_that.categoryId,_that.brandId,_that.createdAt,_that.features,_that.attributes,_that.description,_that.productTags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductDetail implements ProductDetail {
  const _ProductDetail({@JsonKey(name: "id") required this.id, @JsonKey(name: "product_name") required this.productName, @JsonKey(name: "product_name_ascii") required this.productNameAscii, @JsonKey(name: "image_url") required this.imageUrl, @JsonKey(name: "category_id") required this.categoryId, @JsonKey(name: "brand_id") required this.brandId, @JsonKey(name: "created_at") required this.createdAt, @JsonKey(name: "features") required final  List<Feature> features, @JsonKey(name: "attributes") required final  List<ProductAttribute> attributes, @JsonKey(name: "description") required this.description, @JsonKey(name: "product_tags") required final  List<ProductTag> productTags}): _features = features,_attributes = attributes,_productTags = productTags;
  factory _ProductDetail.fromJson(Map<String, dynamic> json) => _$ProductDetailFromJson(json);

@override@JsonKey(name: "id") final  int id;
@override@JsonKey(name: "product_name") final  String productName;
@override@JsonKey(name: "product_name_ascii") final  String productNameAscii;
@override@JsonKey(name: "image_url") final  String imageUrl;
@override@JsonKey(name: "category_id") final  int categoryId;
@override@JsonKey(name: "brand_id") final  int brandId;
@override@JsonKey(name: "created_at") final  DateTime createdAt;
 final  List<Feature> _features;
@override@JsonKey(name: "features") List<Feature> get features {
  if (_features is EqualUnmodifiableListView) return _features;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_features);
}

 final  List<ProductAttribute> _attributes;
@override@JsonKey(name: "attributes") List<ProductAttribute> get attributes {
  if (_attributes is EqualUnmodifiableListView) return _attributes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attributes);
}

@override@JsonKey(name: "description") final  Description description;
 final  List<ProductTag> _productTags;
@override@JsonKey(name: "product_tags") List<ProductTag> get productTags {
  if (_productTags is EqualUnmodifiableListView) return _productTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_productTags);
}


/// Create a copy of ProductDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDetailCopyWith<_ProductDetail> get copyWith => __$ProductDetailCopyWithImpl<_ProductDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productNameAscii, productNameAscii) || other.productNameAscii == productNameAscii)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other._features, _features)&&const DeepCollectionEquality().equals(other._attributes, _attributes)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._productTags, _productTags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productName,productNameAscii,imageUrl,categoryId,brandId,createdAt,const DeepCollectionEquality().hash(_features),const DeepCollectionEquality().hash(_attributes),description,const DeepCollectionEquality().hash(_productTags));

@override
String toString() {
  return 'ProductDetail(id: $id, productName: $productName, productNameAscii: $productNameAscii, imageUrl: $imageUrl, categoryId: $categoryId, brandId: $brandId, createdAt: $createdAt, features: $features, attributes: $attributes, description: $description, productTags: $productTags)';
}


}

/// @nodoc
abstract mixin class _$ProductDetailCopyWith<$Res> implements $ProductDetailCopyWith<$Res> {
  factory _$ProductDetailCopyWith(_ProductDetail value, $Res Function(_ProductDetail) _then) = __$ProductDetailCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "product_name") String productName,@JsonKey(name: "product_name_ascii") String productNameAscii,@JsonKey(name: "image_url") String imageUrl,@JsonKey(name: "category_id") int categoryId,@JsonKey(name: "brand_id") int brandId,@JsonKey(name: "created_at") DateTime createdAt,@JsonKey(name: "features") List<Feature> features,@JsonKey(name: "attributes") List<ProductAttribute> attributes,@JsonKey(name: "description") Description description,@JsonKey(name: "product_tags") List<ProductTag> productTags
});


@override $DescriptionCopyWith<$Res> get description;

}
/// @nodoc
class __$ProductDetailCopyWithImpl<$Res>
    implements _$ProductDetailCopyWith<$Res> {
  __$ProductDetailCopyWithImpl(this._self, this._then);

  final _ProductDetail _self;
  final $Res Function(_ProductDetail) _then;

/// Create a copy of ProductDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productName = null,Object? productNameAscii = null,Object? imageUrl = null,Object? categoryId = null,Object? brandId = null,Object? createdAt = null,Object? features = null,Object? attributes = null,Object? description = null,Object? productTags = null,}) {
  return _then(_ProductDetail(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,productNameAscii: null == productNameAscii ? _self.productNameAscii : productNameAscii // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,brandId: null == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,features: null == features ? _self._features : features // ignore: cast_nullable_to_non_nullable
as List<Feature>,attributes: null == attributes ? _self._attributes : attributes // ignore: cast_nullable_to_non_nullable
as List<ProductAttribute>,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as Description,productTags: null == productTags ? _self._productTags : productTags // ignore: cast_nullable_to_non_nullable
as List<ProductTag>,
  ));
}

/// Create a copy of ProductDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DescriptionCopyWith<$Res> get description {
  
  return $DescriptionCopyWith<$Res>(_self.description, (value) {
    return _then(_self.copyWith(description: value));
  });
}
}

// dart format on
