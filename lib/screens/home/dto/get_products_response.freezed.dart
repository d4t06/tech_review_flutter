// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_products_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetProductsResponse {

@JsonKey(name: "count") int get count;@JsonKey(name: "page") int get page;@JsonKey(name: "page_size") int get pageSize;@JsonKey(name: "products") List<ProductList> get products;
/// Create a copy of GetProductsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProductsResponseCopyWith<GetProductsResponse> get copyWith => _$GetProductsResponseCopyWithImpl<GetProductsResponse>(this as GetProductsResponse, _$identity);

  /// Serializes this GetProductsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProductsResponse&&(identical(other.count, count) || other.count == count)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&const DeepCollectionEquality().equals(other.products, products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,page,pageSize,const DeepCollectionEquality().hash(products));

@override
String toString() {
  return 'GetProductsResponse(count: $count, page: $page, pageSize: $pageSize, products: $products)';
}


}

/// @nodoc
abstract mixin class $GetProductsResponseCopyWith<$Res>  {
  factory $GetProductsResponseCopyWith(GetProductsResponse value, $Res Function(GetProductsResponse) _then) = _$GetProductsResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "count") int count,@JsonKey(name: "page") int page,@JsonKey(name: "page_size") int pageSize,@JsonKey(name: "products") List<ProductList> products
});




}
/// @nodoc
class _$GetProductsResponseCopyWithImpl<$Res>
    implements $GetProductsResponseCopyWith<$Res> {
  _$GetProductsResponseCopyWithImpl(this._self, this._then);

  final GetProductsResponse _self;
  final $Res Function(GetProductsResponse) _then;

/// Create a copy of GetProductsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? page = null,Object? pageSize = null,Object? products = null,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductList>,
  ));
}

}


/// Adds pattern-matching-related methods to [GetProductsResponse].
extension GetProductsResponsePatterns on GetProductsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetProductsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetProductsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetProductsResponse value)  $default,){
final _that = this;
switch (_that) {
case _GetProductsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetProductsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GetProductsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "count")  int count, @JsonKey(name: "page")  int page, @JsonKey(name: "page_size")  int pageSize, @JsonKey(name: "products")  List<ProductList> products)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetProductsResponse() when $default != null:
return $default(_that.count,_that.page,_that.pageSize,_that.products);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "count")  int count, @JsonKey(name: "page")  int page, @JsonKey(name: "page_size")  int pageSize, @JsonKey(name: "products")  List<ProductList> products)  $default,) {final _that = this;
switch (_that) {
case _GetProductsResponse():
return $default(_that.count,_that.page,_that.pageSize,_that.products);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "count")  int count, @JsonKey(name: "page")  int page, @JsonKey(name: "page_size")  int pageSize, @JsonKey(name: "products")  List<ProductList> products)?  $default,) {final _that = this;
switch (_that) {
case _GetProductsResponse() when $default != null:
return $default(_that.count,_that.page,_that.pageSize,_that.products);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetProductsResponse implements GetProductsResponse {
  const _GetProductsResponse({@JsonKey(name: "count") required this.count, @JsonKey(name: "page") required this.page, @JsonKey(name: "page_size") required this.pageSize, @JsonKey(name: "products") required final  List<ProductList> products}): _products = products;
  factory _GetProductsResponse.fromJson(Map<String, dynamic> json) => _$GetProductsResponseFromJson(json);

@override@JsonKey(name: "count") final  int count;
@override@JsonKey(name: "page") final  int page;
@override@JsonKey(name: "page_size") final  int pageSize;
 final  List<ProductList> _products;
@override@JsonKey(name: "products") List<ProductList> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}


/// Create a copy of GetProductsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetProductsResponseCopyWith<_GetProductsResponse> get copyWith => __$GetProductsResponseCopyWithImpl<_GetProductsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetProductsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetProductsResponse&&(identical(other.count, count) || other.count == count)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&const DeepCollectionEquality().equals(other._products, _products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,page,pageSize,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'GetProductsResponse(count: $count, page: $page, pageSize: $pageSize, products: $products)';
}


}

/// @nodoc
abstract mixin class _$GetProductsResponseCopyWith<$Res> implements $GetProductsResponseCopyWith<$Res> {
  factory _$GetProductsResponseCopyWith(_GetProductsResponse value, $Res Function(_GetProductsResponse) _then) = __$GetProductsResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "count") int count,@JsonKey(name: "page") int page,@JsonKey(name: "page_size") int pageSize,@JsonKey(name: "products") List<ProductList> products
});




}
/// @nodoc
class __$GetProductsResponseCopyWithImpl<$Res>
    implements _$GetProductsResponseCopyWith<$Res> {
  __$GetProductsResponseCopyWithImpl(this._self, this._then);

  final _GetProductsResponse _self;
  final $Res Function(_GetProductsResponse) _then;

/// Create a copy of GetProductsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? page = null,Object? pageSize = null,Object? products = null,}) {
  return _then(_GetProductsResponse(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductList>,
  ));
}


}

// dart format on
