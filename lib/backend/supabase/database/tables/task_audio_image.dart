import '../database.dart';

class TaskAudioImageTable extends SupabaseTable<TaskAudioImageRow> {
  @override
  String get tableName => 'task_audio_image';

  @override
  TaskAudioImageRow createRow(Map<String, dynamic> data) =>
      TaskAudioImageRow(data);
}

class TaskAudioImageRow extends SupabaseDataRow {
  TaskAudioImageRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskAudioImageTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get questionAudioUrl => getField<String>('question_audio_url');
  set questionAudioUrl(String? value) =>
      setField<String>('question_audio_url', value);

  String? get answer1ImageUrl => getField<String>('answer_1_image_url');
  set answer1ImageUrl(String? value) =>
      setField<String>('answer_1_image_url', value);

  String? get answer2ImageUrl => getField<String>('answer_2_image_url');
  set answer2ImageUrl(String? value) =>
      setField<String>('answer_2_image_url', value);

  String? get answer3ImageUrl => getField<String>('answer_3_image_url');
  set answer3ImageUrl(String? value) =>
      setField<String>('answer_3_image_url', value);

  String? get answer4ImageUrl => getField<String>('answer_4_image_url');
  set answer4ImageUrl(String? value) =>
      setField<String>('answer_4_image_url', value);

  int? get correctAnswer => getField<int>('correct_answer');
  set correctAnswer(int? value) => setField<int>('correct_answer', value);

  String? get correctAnswerText => getField<String>('correct_answer_text');
  set correctAnswerText(String? value) =>
      setField<String>('correct_answer_text', value);

  String? get difficulty => getField<String>('difficulty');
  set difficulty(String? value) => setField<String>('difficulty', value);
}
