import '../database.dart';

class TaskPuzzleTable extends SupabaseTable<TaskPuzzleRow> {
  @override
  String get tableName => 'task_puzzle';

  @override
  TaskPuzzleRow createRow(Map<String, dynamic> data) => TaskPuzzleRow(data);
}

class TaskPuzzleRow extends SupabaseDataRow {
  TaskPuzzleRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskPuzzleTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get puzzleImageUrl => getField<String>('puzzle_image_url');
  set puzzleImageUrl(String? value) =>
      setField<String>('puzzle_image_url', value);

  List<String> get puzzlePartsImageUrl =>
      getListField<String>('puzzle_parts_image_url');
  set puzzlePartsImageUrl(List<String>? value) =>
      setListField<String>('puzzle_parts_image_url', value);
}
