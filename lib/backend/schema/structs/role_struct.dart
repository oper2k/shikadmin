// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoleStruct extends BaseStruct {
  RoleStruct({
    String? name,
    int? value,
  })  : _name = name,
        _value = value;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "value" field.
  int? _value;
  int get value => _value ?? 0;
  set value(int? val) => _value = val;
  void incrementValue(int amount) => _value = value + amount;
  bool hasValue() => _value != null;

  static RoleStruct fromMap(Map<String, dynamic> data) => RoleStruct(
        name: data['name'] as String?,
        value: data['value'] as int?,
      );

  static RoleStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? RoleStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'value': _value,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'value': serializeParam(
          _value,
          ParamType.int,
        ),
      }.withoutNulls;

  static RoleStruct fromSerializableMap(Map<String, dynamic> data) =>
      RoleStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'RoleStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RoleStruct && name == other.name && value == other.value;
  }

  @override
  int get hashCode => const ListEquality().hash([name, value]);
}

RoleStruct createRoleStruct({
  String? name,
  int? value,
}) =>
    RoleStruct(
      name: name,
      value: value,
    );
