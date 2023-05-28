import '../database.dart';

class FeedQuizzesTable extends SupabaseTable<FeedQuizzesRow> {
  @override
  String get tableName => 'feed_quizzes';

  @override
  FeedQuizzesRow createRow(Map<String, dynamic> data) => FeedQuizzesRow(data);
}

class FeedQuizzesRow extends SupabaseDataRow {
  FeedQuizzesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FeedQuizzesTable();

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

  int? get correctAnswer => getField<int>('correct_answer');
  set correctAnswer(int? value) => setField<int>('correct_answer', value);
}
