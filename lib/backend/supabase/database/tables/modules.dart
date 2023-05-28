import '../database.dart';

class ModulesTable extends SupabaseTable<ModulesRow> {
  @override
  String get tableName => 'modules';

  @override
  ModulesRow createRow(Map<String, dynamic> data) => ModulesRow(data);
}

class ModulesRow extends SupabaseDataRow {
  ModulesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ModulesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get difficulty => getField<String>('difficulty');
  set difficulty(String? value) => setField<String>('difficulty', value);

  List<int> get taskMap => getListField<int>('task_map');
  set taskMap(List<int>? value) => setListField<int>('task_map', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
