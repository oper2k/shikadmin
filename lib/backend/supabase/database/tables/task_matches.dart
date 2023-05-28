import '../database.dart';

class TaskMatchesTable extends SupabaseTable<TaskMatchesRow> {
  @override
  String get tableName => 'task_matches';

  @override
  TaskMatchesRow createRow(Map<String, dynamic> data) => TaskMatchesRow(data);
}

class TaskMatchesRow extends SupabaseDataRow {
  TaskMatchesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskMatchesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  String? get difficulty => getField<String>('difficulty');
  set difficulty(String? value) => setField<String>('difficulty', value);
}
