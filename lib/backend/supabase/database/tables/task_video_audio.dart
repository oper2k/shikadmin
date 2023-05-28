import '../database.dart';

class TaskVideoAudioTable extends SupabaseTable<TaskVideoAudioRow> {
  @override
  String get tableName => 'task_video_audio';

  @override
  TaskVideoAudioRow createRow(Map<String, dynamic> data) =>
      TaskVideoAudioRow(data);
}

class TaskVideoAudioRow extends SupabaseDataRow {
  TaskVideoAudioRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskVideoAudioTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get questionVideoUrl => getField<String>('question_video_url');
  set questionVideoUrl(String? value) =>
      setField<String>('question_video_url', value);

  String? get answer1AudioUrl => getField<String>('answer_1_audio_url');
  set answer1AudioUrl(String? value) =>
      setField<String>('answer_1_audio_url', value);

  String? get answer2AudioUrl => getField<String>('answer_2_audio_url');
  set answer2AudioUrl(String? value) =>
      setField<String>('answer_2_audio_url', value);

  String? get answer3AudioUrl => getField<String>('answer_3_audio_url');
  set answer3AudioUrl(String? value) =>
      setField<String>('answer_3_audio_url', value);

  int? get correctAnswer => getField<int>('correct_answer');
  set correctAnswer(int? value) => setField<int>('correct_answer', value);

  String? get difficulty => getField<String>('difficulty');
  set difficulty(String? value) => setField<String>('difficulty', value);
}
