import '../database.dart';

class TaskTextTable extends SupabaseTable<TaskTextRow> {
  @override
  String get tableName => 'task_text';

  @override
  TaskTextRow createRow(Map<String, dynamic> data) => TaskTextRow(data);
}

class TaskTextRow extends SupabaseDataRow {
  TaskTextRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskTextTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get question => getField<String>('question');
  set question(String? value) => setField<String>('question', value);

  String? get answer1 => getField<String>('answer_1');
  set answer1(String? value) => setField<String>('answer_1', value);

  String? get answer2 => getField<String>('answer_2');
  set answer2(String? value) => setField<String>('answer_2', value);

  String? get answer3 => getField<String>('answer_3');
  set answer3(String? value) => setField<String>('answer_3', value);

  String? get imageAnswer1 => getField<String>('image_answer_1');
  set imageAnswer1(String? value) => setField<String>('image_answer_1', value);

  String? get imageAnswer2 => getField<String>('image_answer_2');
  set imageAnswer2(String? value) => setField<String>('image_answer_2', value);

  String? get imageAnswer3 => getField<String>('image_answer_3');
  set imageAnswer3(String? value) => setField<String>('image_answer_3', value);

  int? get correctAnswer => getField<int>('correct_answer');
  set correctAnswer(int? value) => setField<int>('correct_answer', value);

  String? get correctAnswerText => getField<String>('correct_answer_text');
  set correctAnswerText(String? value) =>
      setField<String>('correct_answer_text', value);

  String? get difficulty => getField<String>('difficulty');
  set difficulty(String? value) => setField<String>('difficulty', value);
}
