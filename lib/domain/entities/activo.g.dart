// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activo.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetActivoCollection on Isar {
  IsarCollection<Activo> get activos => this.collection();
}

const ActivoSchema = CollectionSchema(
  name: r'Activo',
  id: 7770542294908469559,
  properties: {
    r'description': PropertySchema(
      id: 0,
      name: r'description',
      type: IsarType.stringList,
    ),
    r'id': PropertySchema(
      id: 1,
      name: r'id',
      type: IsarType.string,
    ),
    r'images': PropertySchema(
      id: 2,
      name: r'images',
      type: IsarType.stringList,
    ),
    r'isActive': PropertySchema(
      id: 3,
      name: r'isActive',
      type: IsarType.bool,
    ),
    r'serial': PropertySchema(
      id: 4,
      name: r'serial',
      type: IsarType.string,
    ),
    r'tag': PropertySchema(
      id: 5,
      name: r'tag',
      type: IsarType.string,
    )
  },
  estimateSize: _activoEstimateSize,
  serialize: _activoSerialize,
  deserialize: _activoDeserialize,
  deserializeProp: _activoDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _activoGetId,
  getLinks: _activoGetLinks,
  attach: _activoAttach,
  version: '3.1.0+1',
);

int _activoEstimateSize(
  Activo object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.description.length * 3;
  {
    for (var i = 0; i < object.description.length; i++) {
      final value = object.description[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.images.length * 3;
  {
    for (var i = 0; i < object.images.length; i++) {
      final value = object.images[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.serial.length * 3;
  bytesCount += 3 + object.tag.length * 3;
  return bytesCount;
}

void _activoSerialize(
  Activo object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.description);
  writer.writeString(offsets[1], object.id);
  writer.writeStringList(offsets[2], object.images);
  writer.writeBool(offsets[3], object.isActive);
  writer.writeString(offsets[4], object.serial);
  writer.writeString(offsets[5], object.tag);
}

Activo _activoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Activo(
    description: reader.readStringList(offsets[0]) ?? [],
    id: reader.readString(offsets[1]),
    images: reader.readStringList(offsets[2]) ?? [],
    isActive: reader.readBool(offsets[3]),
    serial: reader.readString(offsets[4]),
    tag: reader.readString(offsets[5]),
  );
  object.isarId = id;
  return object;
}

P _activoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset) ?? []) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readStringList(offset) ?? []) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _activoGetId(Activo object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _activoGetLinks(Activo object) {
  return [];
}

void _activoAttach(IsarCollection<dynamic> col, Id id, Activo object) {
  object.isarId = id;
}

extension ActivoQueryWhereSort on QueryBuilder<Activo, Activo, QWhere> {
  QueryBuilder<Activo, Activo, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ActivoQueryWhere on QueryBuilder<Activo, Activo, QWhereClause> {
  QueryBuilder<Activo, Activo, QAfterWhereClause> isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterWhereClause> isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Activo, Activo, QAfterWhereClause> isarIdGreaterThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<Activo, Activo, QAfterWhereClause> isarIdLessThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<Activo, Activo, QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ActivoQueryFilter on QueryBuilder<Activo, Activo, QFilterCondition> {
  QueryBuilder<Activo, Activo, QAfterFilterCondition> descriptionElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      descriptionElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      descriptionElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> descriptionElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      descriptionElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      descriptionElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      descriptionElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> descriptionElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      descriptionElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      descriptionElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> descriptionLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'description',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'description',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'description',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> descriptionLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'description',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      descriptionLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'description',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> descriptionLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'description',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> idContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> idMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> imagesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'images',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> imagesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'images',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> imagesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'images',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> imagesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'images',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> imagesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'images',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> imagesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'images',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> imagesElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'images',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> imagesElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'images',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> imagesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'images',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      imagesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'images',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> imagesLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> imagesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> imagesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> imagesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> imagesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> imagesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> isActiveEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isActive',
        value: value,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> serialEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> serialGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'serial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> serialLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'serial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> serialBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'serial',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> serialStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'serial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> serialEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'serial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> serialContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'serial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> serialMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'serial',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> serialIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serial',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> serialIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'serial',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> tagEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> tagGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> tagLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> tagBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tag',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> tagStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> tagEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> tagContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> tagMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tag',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> tagIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tag',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> tagIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tag',
        value: '',
      ));
    });
  }
}

extension ActivoQueryObject on QueryBuilder<Activo, Activo, QFilterCondition> {}

extension ActivoQueryLinks on QueryBuilder<Activo, Activo, QFilterCondition> {}

extension ActivoQuerySortBy on QueryBuilder<Activo, Activo, QSortBy> {
  QueryBuilder<Activo, Activo, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortBySerial() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serial', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortBySerialDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serial', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByTag() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tag', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByTagDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tag', Sort.desc);
    });
  }
}

extension ActivoQuerySortThenBy on QueryBuilder<Activo, Activo, QSortThenBy> {
  QueryBuilder<Activo, Activo, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenBySerial() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serial', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenBySerialDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serial', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByTag() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tag', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByTagDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tag', Sort.desc);
    });
  }
}

extension ActivoQueryWhereDistinct on QueryBuilder<Activo, Activo, QDistinct> {
  QueryBuilder<Activo, Activo, QDistinct> distinctByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description');
    });
  }

  QueryBuilder<Activo, Activo, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Activo, Activo, QDistinct> distinctByImages() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'images');
    });
  }

  QueryBuilder<Activo, Activo, QDistinct> distinctByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isActive');
    });
  }

  QueryBuilder<Activo, Activo, QDistinct> distinctBySerial(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'serial', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Activo, Activo, QDistinct> distinctByTag(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tag', caseSensitive: caseSensitive);
    });
  }
}

extension ActivoQueryProperty on QueryBuilder<Activo, Activo, QQueryProperty> {
  QueryBuilder<Activo, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<Activo, List<String>, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<Activo, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Activo, List<String>, QQueryOperations> imagesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'images');
    });
  }

  QueryBuilder<Activo, bool, QQueryOperations> isActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isActive');
    });
  }

  QueryBuilder<Activo, String, QQueryOperations> serialProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serial');
    });
  }

  QueryBuilder<Activo, String, QQueryOperations> tagProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tag');
    });
  }
}
