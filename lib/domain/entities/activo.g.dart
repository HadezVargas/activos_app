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
    r'active': PropertySchema(
      id: 0,
      name: r'active',
      type: IsarType.string,
    ),
    r'addressInternalLocation': PropertySchema(
      id: 1,
      name: r'addressInternalLocation',
      type: IsarType.string,
    ),
    r'classification': PropertySchema(
      id: 2,
      name: r'classification',
      type: IsarType.string,
    ),
    r'criticalityDescription': PropertySchema(
      id: 3,
      name: r'criticalityDescription',
      type: IsarType.string,
    ),
    r'criticisms': PropertySchema(
      id: 4,
      name: r'criticisms',
      type: IsarType.long,
    ),
    r'description': PropertySchema(
      id: 5,
      name: r'description',
      type: IsarType.string,
    ),
    r'descriptionLocation': PropertySchema(
      id: 6,
      name: r'descriptionLocation',
      type: IsarType.string,
    ),
    r'father': PropertySchema(
      id: 7,
      name: r'father',
      type: IsarType.string,
    ),
    r'iPSIGMA': PropertySchema(
      id: 8,
      name: r'iPSIGMA',
      type: IsarType.string,
    ),
    r'images': PropertySchema(
      id: 9,
      name: r'images',
      type: IsarType.stringList,
    ),
    r'installation': PropertySchema(
      id: 10,
      name: r'installation',
      type: IsarType.string,
    ),
    r'location': PropertySchema(
      id: 11,
      name: r'location',
      type: IsarType.string,
    ),
    r'numberJDE': PropertySchema(
      id: 12,
      name: r'numberJDE',
      type: IsarType.string,
    ),
    r'operationalNumber': PropertySchema(
      id: 13,
      name: r'operationalNumber',
      type: IsarType.string,
    ),
    r'plant': PropertySchema(
      id: 14,
      name: r'plant',
      type: IsarType.string,
    ),
    r'series': PropertySchema(
      id: 15,
      name: r'series',
      type: IsarType.string,
    ),
    r'state': PropertySchema(
      id: 16,
      name: r'state',
      type: IsarType.string,
    ),
    r'subRegionCommuneCorregimiento': PropertySchema(
      id: 17,
      name: r'subRegionCommuneCorregimiento',
      type: IsarType.string,
    ),
    r'tAG': PropertySchema(
      id: 18,
      name: r'tAG',
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
  bytesCount += 3 + object.active.length * 3;
  bytesCount += 3 + object.addressInternalLocation.length * 3;
  bytesCount += 3 + object.classification.length * 3;
  bytesCount += 3 + object.criticalityDescription.length * 3;
  bytesCount += 3 + object.description.length * 3;
  bytesCount += 3 + object.descriptionLocation.length * 3;
  bytesCount += 3 + object.father.length * 3;
  bytesCount += 3 + object.iPSIGMA.length * 3;
  bytesCount += 3 + object.images.length * 3;
  {
    for (var i = 0; i < object.images.length; i++) {
      final value = object.images[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.installation.length * 3;
  bytesCount += 3 + object.location.length * 3;
  bytesCount += 3 + object.numberJDE.length * 3;
  bytesCount += 3 + object.operationalNumber.length * 3;
  bytesCount += 3 + object.plant.length * 3;
  bytesCount += 3 + object.series.length * 3;
  bytesCount += 3 + object.state.length * 3;
  bytesCount += 3 + object.subRegionCommuneCorregimiento.length * 3;
  bytesCount += 3 + object.tAG.length * 3;
  return bytesCount;
}

void _activoSerialize(
  Activo object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.active);
  writer.writeString(offsets[1], object.addressInternalLocation);
  writer.writeString(offsets[2], object.classification);
  writer.writeString(offsets[3], object.criticalityDescription);
  writer.writeLong(offsets[4], object.criticisms);
  writer.writeString(offsets[5], object.description);
  writer.writeString(offsets[6], object.descriptionLocation);
  writer.writeString(offsets[7], object.father);
  writer.writeString(offsets[8], object.iPSIGMA);
  writer.writeStringList(offsets[9], object.images);
  writer.writeString(offsets[10], object.installation);
  writer.writeString(offsets[11], object.location);
  writer.writeString(offsets[12], object.numberJDE);
  writer.writeString(offsets[13], object.operationalNumber);
  writer.writeString(offsets[14], object.plant);
  writer.writeString(offsets[15], object.series);
  writer.writeString(offsets[16], object.state);
  writer.writeString(offsets[17], object.subRegionCommuneCorregimiento);
  writer.writeString(offsets[18], object.tAG);
}

Activo _activoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Activo(
    active: reader.readString(offsets[0]),
    addressInternalLocation: reader.readString(offsets[1]),
    classification: reader.readString(offsets[2]),
    criticalityDescription: reader.readString(offsets[3]),
    criticisms: reader.readLong(offsets[4]),
    description: reader.readString(offsets[5]),
    descriptionLocation: reader.readString(offsets[6]),
    father: reader.readString(offsets[7]),
    iPSIGMA: reader.readString(offsets[8]),
    images: reader.readStringList(offsets[9]) ?? [],
    installation: reader.readString(offsets[10]),
    isarId: id,
    location: reader.readString(offsets[11]),
    numberJDE: reader.readString(offsets[12]),
    operationalNumber: reader.readString(offsets[13]),
    plant: reader.readString(offsets[14]),
    series: reader.readString(offsets[15]),
    state: reader.readString(offsets[16]),
    subRegionCommuneCorregimiento: reader.readString(offsets[17]),
    tAG: reader.readString(offsets[18]),
  );
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
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readStringList(offset) ?? []) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (reader.readString(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    case 18:
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

void _activoAttach(IsarCollection<dynamic> col, Id id, Activo object) {}

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
  QueryBuilder<Activo, Activo, QAfterFilterCondition> activeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'active',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> activeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'active',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> activeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'active',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> activeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'active',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> activeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'active',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> activeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'active',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> activeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'active',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> activeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'active',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> activeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'active',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> activeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'active',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      addressInternalLocationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addressInternalLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      addressInternalLocationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'addressInternalLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      addressInternalLocationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'addressInternalLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      addressInternalLocationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'addressInternalLocation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      addressInternalLocationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'addressInternalLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      addressInternalLocationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'addressInternalLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      addressInternalLocationContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'addressInternalLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      addressInternalLocationMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'addressInternalLocation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      addressInternalLocationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addressInternalLocation',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      addressInternalLocationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'addressInternalLocation',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> classificationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'classification',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> classificationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'classification',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> classificationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'classification',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> classificationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'classification',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> classificationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'classification',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> classificationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'classification',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> classificationContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'classification',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> classificationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'classification',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> classificationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'classification',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      classificationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'classification',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      criticalityDescriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'criticalityDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      criticalityDescriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'criticalityDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      criticalityDescriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'criticalityDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      criticalityDescriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'criticalityDescription',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      criticalityDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'criticalityDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      criticalityDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'criticalityDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      criticalityDescriptionContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'criticalityDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      criticalityDescriptionMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'criticalityDescription',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      criticalityDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'criticalityDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      criticalityDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'criticalityDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> criticismsEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'criticisms',
        value: value,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> criticismsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'criticisms',
        value: value,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> criticismsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'criticisms',
        value: value,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> criticismsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'criticisms',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> descriptionEqualTo(
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

  QueryBuilder<Activo, Activo, QAfterFilterCondition> descriptionGreaterThan(
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

  QueryBuilder<Activo, Activo, QAfterFilterCondition> descriptionLessThan(
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

  QueryBuilder<Activo, Activo, QAfterFilterCondition> descriptionBetween(
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

  QueryBuilder<Activo, Activo, QAfterFilterCondition> descriptionStartsWith(
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

  QueryBuilder<Activo, Activo, QAfterFilterCondition> descriptionEndsWith(
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

  QueryBuilder<Activo, Activo, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> descriptionMatches(
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

  QueryBuilder<Activo, Activo, QAfterFilterCondition> descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      descriptionLocationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descriptionLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      descriptionLocationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'descriptionLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      descriptionLocationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'descriptionLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      descriptionLocationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'descriptionLocation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      descriptionLocationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'descriptionLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      descriptionLocationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'descriptionLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      descriptionLocationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'descriptionLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      descriptionLocationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'descriptionLocation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      descriptionLocationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descriptionLocation',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      descriptionLocationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'descriptionLocation',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> fatherEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'father',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> fatherGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'father',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> fatherLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'father',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> fatherBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'father',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> fatherStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'father',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> fatherEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'father',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> fatherContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'father',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> fatherMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'father',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> fatherIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'father',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> fatherIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'father',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> iPSIGMAEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iPSIGMA',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> iPSIGMAGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'iPSIGMA',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> iPSIGMALessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'iPSIGMA',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> iPSIGMABetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'iPSIGMA',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> iPSIGMAStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'iPSIGMA',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> iPSIGMAEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'iPSIGMA',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> iPSIGMAContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'iPSIGMA',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> iPSIGMAMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'iPSIGMA',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> iPSIGMAIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iPSIGMA',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> iPSIGMAIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'iPSIGMA',
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

  QueryBuilder<Activo, Activo, QAfterFilterCondition> installationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'installation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> installationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'installation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> installationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'installation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> installationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'installation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> installationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'installation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> installationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'installation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> installationContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'installation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> installationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'installation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> installationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'installation',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> installationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'installation',
        value: '',
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

  QueryBuilder<Activo, Activo, QAfterFilterCondition> locationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> locationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> locationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> locationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'location',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> locationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> locationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> locationContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> locationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'location',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> locationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> locationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> numberJDEEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numberJDE',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> numberJDEGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'numberJDE',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> numberJDELessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'numberJDE',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> numberJDEBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'numberJDE',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> numberJDEStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'numberJDE',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> numberJDEEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'numberJDE',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> numberJDEContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'numberJDE',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> numberJDEMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'numberJDE',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> numberJDEIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numberJDE',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> numberJDEIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'numberJDE',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> operationalNumberEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'operationalNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      operationalNumberGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'operationalNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> operationalNumberLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'operationalNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> operationalNumberBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'operationalNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      operationalNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'operationalNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> operationalNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'operationalNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> operationalNumberContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'operationalNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> operationalNumberMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'operationalNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      operationalNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'operationalNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      operationalNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'operationalNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> plantEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'plant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> plantGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'plant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> plantLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'plant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> plantBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'plant',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> plantStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'plant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> plantEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'plant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> plantContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'plant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> plantMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'plant',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> plantIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'plant',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> plantIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'plant',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> seriesEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'series',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> seriesGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'series',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> seriesLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'series',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> seriesBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'series',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> seriesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'series',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> seriesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'series',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> seriesContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'series',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> seriesMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'series',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> seriesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'series',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> seriesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'series',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> stateEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> stateGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> stateLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> stateBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'state',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> stateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> stateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> stateContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> stateMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'state',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> stateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'state',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> stateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'state',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      subRegionCommuneCorregimientoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subRegionCommuneCorregimiento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      subRegionCommuneCorregimientoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subRegionCommuneCorregimiento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      subRegionCommuneCorregimientoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subRegionCommuneCorregimiento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      subRegionCommuneCorregimientoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subRegionCommuneCorregimiento',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      subRegionCommuneCorregimientoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'subRegionCommuneCorregimiento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      subRegionCommuneCorregimientoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'subRegionCommuneCorregimiento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      subRegionCommuneCorregimientoContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'subRegionCommuneCorregimiento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      subRegionCommuneCorregimientoMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'subRegionCommuneCorregimiento',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      subRegionCommuneCorregimientoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subRegionCommuneCorregimiento',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition>
      subRegionCommuneCorregimientoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'subRegionCommuneCorregimiento',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> tAGEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tAG',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> tAGGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tAG',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> tAGLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tAG',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> tAGBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tAG',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> tAGStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tAG',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> tAGEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tAG',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> tAGContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tAG',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> tAGMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tAG',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> tAGIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tAG',
        value: '',
      ));
    });
  }

  QueryBuilder<Activo, Activo, QAfterFilterCondition> tAGIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tAG',
        value: '',
      ));
    });
  }
}

extension ActivoQueryObject on QueryBuilder<Activo, Activo, QFilterCondition> {}

extension ActivoQueryLinks on QueryBuilder<Activo, Activo, QFilterCondition> {}

extension ActivoQuerySortBy on QueryBuilder<Activo, Activo, QSortBy> {
  QueryBuilder<Activo, Activo, QAfterSortBy> sortByActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'active', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'active', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByAddressInternalLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addressInternalLocation', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy>
      sortByAddressInternalLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addressInternalLocation', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByClassification() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'classification', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByClassificationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'classification', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByCriticalityDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'criticalityDescription', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy>
      sortByCriticalityDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'criticalityDescription', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByCriticisms() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'criticisms', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByCriticismsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'criticisms', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByDescriptionLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descriptionLocation', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByDescriptionLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descriptionLocation', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByFather() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'father', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByFatherDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'father', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByIPSIGMA() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iPSIGMA', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByIPSIGMADesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iPSIGMA', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByInstallation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'installation', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByInstallationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'installation', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByNumberJDE() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberJDE', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByNumberJDEDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberJDE', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByOperationalNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'operationalNumber', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByOperationalNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'operationalNumber', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByPlant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plant', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByPlantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plant', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortBySeries() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'series', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortBySeriesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'series', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'state', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'state', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy>
      sortBySubRegionCommuneCorregimiento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subRegionCommuneCorregimiento', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy>
      sortBySubRegionCommuneCorregimientoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subRegionCommuneCorregimiento', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByTAG() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tAG', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> sortByTAGDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tAG', Sort.desc);
    });
  }
}

extension ActivoQuerySortThenBy on QueryBuilder<Activo, Activo, QSortThenBy> {
  QueryBuilder<Activo, Activo, QAfterSortBy> thenByActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'active', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'active', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByAddressInternalLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addressInternalLocation', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy>
      thenByAddressInternalLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addressInternalLocation', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByClassification() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'classification', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByClassificationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'classification', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByCriticalityDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'criticalityDescription', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy>
      thenByCriticalityDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'criticalityDescription', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByCriticisms() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'criticisms', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByCriticismsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'criticisms', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByDescriptionLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descriptionLocation', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByDescriptionLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descriptionLocation', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByFather() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'father', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByFatherDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'father', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByIPSIGMA() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iPSIGMA', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByIPSIGMADesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iPSIGMA', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByInstallation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'installation', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByInstallationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'installation', Sort.desc);
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

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByNumberJDE() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberJDE', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByNumberJDEDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberJDE', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByOperationalNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'operationalNumber', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByOperationalNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'operationalNumber', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByPlant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plant', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByPlantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plant', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenBySeries() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'series', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenBySeriesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'series', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'state', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'state', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy>
      thenBySubRegionCommuneCorregimiento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subRegionCommuneCorregimiento', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy>
      thenBySubRegionCommuneCorregimientoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subRegionCommuneCorregimiento', Sort.desc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByTAG() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tAG', Sort.asc);
    });
  }

  QueryBuilder<Activo, Activo, QAfterSortBy> thenByTAGDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tAG', Sort.desc);
    });
  }
}

extension ActivoQueryWhereDistinct on QueryBuilder<Activo, Activo, QDistinct> {
  QueryBuilder<Activo, Activo, QDistinct> distinctByActive(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'active', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Activo, Activo, QDistinct> distinctByAddressInternalLocation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'addressInternalLocation',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Activo, Activo, QDistinct> distinctByClassification(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'classification',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Activo, Activo, QDistinct> distinctByCriticalityDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'criticalityDescription',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Activo, Activo, QDistinct> distinctByCriticisms() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'criticisms');
    });
  }

  QueryBuilder<Activo, Activo, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Activo, Activo, QDistinct> distinctByDescriptionLocation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'descriptionLocation',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Activo, Activo, QDistinct> distinctByFather(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'father', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Activo, Activo, QDistinct> distinctByIPSIGMA(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'iPSIGMA', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Activo, Activo, QDistinct> distinctByImages() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'images');
    });
  }

  QueryBuilder<Activo, Activo, QDistinct> distinctByInstallation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'installation', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Activo, Activo, QDistinct> distinctByLocation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'location', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Activo, Activo, QDistinct> distinctByNumberJDE(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numberJDE', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Activo, Activo, QDistinct> distinctByOperationalNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'operationalNumber',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Activo, Activo, QDistinct> distinctByPlant(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'plant', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Activo, Activo, QDistinct> distinctBySeries(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'series', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Activo, Activo, QDistinct> distinctByState(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'state', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Activo, Activo, QDistinct>
      distinctBySubRegionCommuneCorregimiento({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subRegionCommuneCorregimiento',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Activo, Activo, QDistinct> distinctByTAG(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tAG', caseSensitive: caseSensitive);
    });
  }
}

extension ActivoQueryProperty on QueryBuilder<Activo, Activo, QQueryProperty> {
  QueryBuilder<Activo, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<Activo, String, QQueryOperations> activeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'active');
    });
  }

  QueryBuilder<Activo, String, QQueryOperations>
      addressInternalLocationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'addressInternalLocation');
    });
  }

  QueryBuilder<Activo, String, QQueryOperations> classificationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'classification');
    });
  }

  QueryBuilder<Activo, String, QQueryOperations>
      criticalityDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'criticalityDescription');
    });
  }

  QueryBuilder<Activo, int, QQueryOperations> criticismsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'criticisms');
    });
  }

  QueryBuilder<Activo, String, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<Activo, String, QQueryOperations> descriptionLocationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'descriptionLocation');
    });
  }

  QueryBuilder<Activo, String, QQueryOperations> fatherProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'father');
    });
  }

  QueryBuilder<Activo, String, QQueryOperations> iPSIGMAProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'iPSIGMA');
    });
  }

  QueryBuilder<Activo, List<String>, QQueryOperations> imagesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'images');
    });
  }

  QueryBuilder<Activo, String, QQueryOperations> installationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'installation');
    });
  }

  QueryBuilder<Activo, String, QQueryOperations> locationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'location');
    });
  }

  QueryBuilder<Activo, String, QQueryOperations> numberJDEProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numberJDE');
    });
  }

  QueryBuilder<Activo, String, QQueryOperations> operationalNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'operationalNumber');
    });
  }

  QueryBuilder<Activo, String, QQueryOperations> plantProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'plant');
    });
  }

  QueryBuilder<Activo, String, QQueryOperations> seriesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'series');
    });
  }

  QueryBuilder<Activo, String, QQueryOperations> stateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'state');
    });
  }

  QueryBuilder<Activo, String, QQueryOperations>
      subRegionCommuneCorregimientoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subRegionCommuneCorregimiento');
    });
  }

  QueryBuilder<Activo, String, QQueryOperations> tAGProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tAG');
    });
  }
}
