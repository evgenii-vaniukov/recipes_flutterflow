import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'recipe_details_record.g.dart';

abstract class RecipeDetailsRecord
    implements Built<RecipeDetailsRecord, RecipeDetailsRecordBuilder> {
  static Serializer<RecipeDetailsRecord> get serializer =>
      _$recipeDetailsRecordSerializer;

  String? get recipeName;

  double? get calories;

  String? get cuisineType;

  BuiltList<String>? get ingredients;

  String? get recipeImage;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RecipeDetailsRecordBuilder builder) => builder
    ..recipeName = ''
    ..calories = 0.0
    ..cuisineType = ''
    ..ingredients = ListBuilder()
    ..recipeImage = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recipeDetails');

  static Stream<RecipeDetailsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RecipeDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RecipeDetailsRecord._();
  factory RecipeDetailsRecord(
          [void Function(RecipeDetailsRecordBuilder) updates]) =
      _$RecipeDetailsRecord;

  static RecipeDetailsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRecipeDetailsRecordData({
  String? recipeName,
  double? calories,
  String? cuisineType,
  String? recipeImage,
}) {
  final firestoreData = serializers.toFirestore(
    RecipeDetailsRecord.serializer,
    RecipeDetailsRecord(
      (r) => r
        ..recipeName = recipeName
        ..calories = calories
        ..cuisineType = cuisineType
        ..ingredients = null
        ..recipeImage = recipeImage,
    ),
  );

  return firestoreData;
}
