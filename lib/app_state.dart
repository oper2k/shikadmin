import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<RoleStruct> _dropdownRole = [
    RoleStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Пользователь\",\"value\":\"0\"}')),
    RoleStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Редактор\",\"value\":\"1\"}')),
    RoleStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Администратор\",\"value\":\"2\"}'))
  ];
  List<RoleStruct> get dropdownRole => _dropdownRole;
  set dropdownRole(List<RoleStruct> _value) {
    _dropdownRole = _value;
  }

  void addToDropdownRole(RoleStruct _value) {
    _dropdownRole.add(_value);
  }

  void removeFromDropdownRole(RoleStruct _value) {
    _dropdownRole.remove(_value);
  }

  void removeAtIndexFromDropdownRole(int _index) {
    _dropdownRole.removeAt(_index);
  }

  void updateDropdownRoleAtIndex(
    int _index,
    Function(RoleStruct) updateFn,
  ) {
    updateFn(_dropdownRole[_index]);
  }

  List<String> _dropdownKnowledgeLevel = [
    'Новичок',
    'Немного разбираюсь',
    'Средний уровень знаний',
    'Профессионал'
  ];
  List<String> get dropdownKnowledgeLevel => _dropdownKnowledgeLevel;
  set dropdownKnowledgeLevel(List<String> _value) {
    _dropdownKnowledgeLevel = _value;
  }

  void addToDropdownKnowledgeLevel(String _value) {
    _dropdownKnowledgeLevel.add(_value);
  }

  void removeFromDropdownKnowledgeLevel(String _value) {
    _dropdownKnowledgeLevel.remove(_value);
  }

  void removeAtIndexFromDropdownKnowledgeLevel(int _index) {
    _dropdownKnowledgeLevel.removeAt(_index);
  }

  void updateDropdownKnowledgeLevelAtIndex(
    int _index,
    Function(String) updateFn,
  ) {
    updateFn(_dropdownKnowledgeLevel[_index]);
  }

  List<String> _dropdownArtDirection = [
    'Музыкальное',
    'Цирковое',
    'Хореографическое',
    'Театральное',
    'Изобразительное'
  ];
  List<String> get dropdownArtDirection => _dropdownArtDirection;
  set dropdownArtDirection(List<String> _value) {
    _dropdownArtDirection = _value;
  }

  void addToDropdownArtDirection(String _value) {
    _dropdownArtDirection.add(_value);
  }

  void removeFromDropdownArtDirection(String _value) {
    _dropdownArtDirection.remove(_value);
  }

  void removeAtIndexFromDropdownArtDirection(int _index) {
    _dropdownArtDirection.removeAt(_index);
  }

  void updateDropdownArtDirectionAtIndex(
    int _index,
    Function(String) updateFn,
  ) {
    updateFn(_dropdownArtDirection[_index]);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
