import '../database.dart';

class Feed5QuestionsTable extends SupabaseTable<Feed5QuestionsRow> {
  @override
  String get tableName => 'feed_5_questions';

  @override
  Feed5QuestionsRow createRow(Map<String, dynamic> data) =>
      Feed5QuestionsRow(data);
}

class Feed5QuestionsRow extends SupabaseDataRow {
  Feed5QuestionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Feed5QuestionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get videoUrl => getField<String>('video_url');
  set videoUrl(String? value) => setField<String>('video_url', value);

  String? get educatorDescription => getField<String>('educator_description');
  set educatorDescription(String? value) =>
      setField<String>('educator_description', value);
}
