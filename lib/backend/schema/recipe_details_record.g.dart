// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_details_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RecipeDetailsRecord> _$recipeDetailsRecordSerializer =
    new _$RecipeDetailsRecordSerializer();

class _$RecipeDetailsRecordSerializer
    implements StructuredSerializer<RecipeDetailsRecord> {
  @override
  final Iterable<Type> types = const [
    RecipeDetailsRecord,
    _$RecipeDetailsRecord
  ];
  @override
  final String wireName = 'RecipeDetailsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, RecipeDetailsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.recipeName;
    if (value != null) {
      result
        ..add('recipeName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.calories;
    if (value != null) {
      result
        ..add('calories')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.cuisineType;
    if (value != null) {
      result
        ..add('cuisineType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ingredients;
    if (value != null) {
      result
        ..add('ingredients')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.recipeImage;
    if (value != null) {
      result
        ..add('recipeImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  RecipeDetailsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RecipeDetailsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'recipeName':
          result.recipeName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'calories':
          result.calories = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'cuisineType':
          result.cuisineType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ingredients':
          result.ingredients.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'recipeImage':
          result.recipeImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$RecipeDetailsRecord extends RecipeDetailsRecord {
  @override
  final String? recipeName;
  @override
  final double? calories;
  @override
  final String? cuisineType;
  @override
  final BuiltList<String>? ingredients;
  @override
  final String? recipeImage;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RecipeDetailsRecord(
          [void Function(RecipeDetailsRecordBuilder)? updates]) =>
      (new RecipeDetailsRecordBuilder()..update(updates))._build();

  _$RecipeDetailsRecord._(
      {this.recipeName,
      this.calories,
      this.cuisineType,
      this.ingredients,
      this.recipeImage,
      this.ffRef})
      : super._();

  @override
  RecipeDetailsRecord rebuild(
          void Function(RecipeDetailsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecipeDetailsRecordBuilder toBuilder() =>
      new RecipeDetailsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecipeDetailsRecord &&
        recipeName == other.recipeName &&
        calories == other.calories &&
        cuisineType == other.cuisineType &&
        ingredients == other.ingredients &&
        recipeImage == other.recipeImage &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, recipeName.hashCode), calories.hashCode),
                    cuisineType.hashCode),
                ingredients.hashCode),
            recipeImage.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecipeDetailsRecord')
          ..add('recipeName', recipeName)
          ..add('calories', calories)
          ..add('cuisineType', cuisineType)
          ..add('ingredients', ingredients)
          ..add('recipeImage', recipeImage)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RecipeDetailsRecordBuilder
    implements Builder<RecipeDetailsRecord, RecipeDetailsRecordBuilder> {
  _$RecipeDetailsRecord? _$v;

  String? _recipeName;
  String? get recipeName => _$this._recipeName;
  set recipeName(String? recipeName) => _$this._recipeName = recipeName;

  double? _calories;
  double? get calories => _$this._calories;
  set calories(double? calories) => _$this._calories = calories;

  String? _cuisineType;
  String? get cuisineType => _$this._cuisineType;
  set cuisineType(String? cuisineType) => _$this._cuisineType = cuisineType;

  ListBuilder<String>? _ingredients;
  ListBuilder<String> get ingredients =>
      _$this._ingredients ??= new ListBuilder<String>();
  set ingredients(ListBuilder<String>? ingredients) =>
      _$this._ingredients = ingredients;

  String? _recipeImage;
  String? get recipeImage => _$this._recipeImage;
  set recipeImage(String? recipeImage) => _$this._recipeImage = recipeImage;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RecipeDetailsRecordBuilder() {
    RecipeDetailsRecord._initializeBuilder(this);
  }

  RecipeDetailsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _recipeName = $v.recipeName;
      _calories = $v.calories;
      _cuisineType = $v.cuisineType;
      _ingredients = $v.ingredients?.toBuilder();
      _recipeImage = $v.recipeImage;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecipeDetailsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecipeDetailsRecord;
  }

  @override
  void update(void Function(RecipeDetailsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecipeDetailsRecord build() => _build();

  _$RecipeDetailsRecord _build() {
    _$RecipeDetailsRecord _$result;
    try {
      _$result = _$v ??
          new _$RecipeDetailsRecord._(
              recipeName: recipeName,
              calories: calories,
              cuisineType: cuisineType,
              ingredients: _ingredients?.build(),
              recipeImage: recipeImage,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ingredients';
        _ingredients?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RecipeDetailsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
