import '../database.dart';

class FeedInterviewTable extends SupabaseTable<FeedInterviewRow> {
  @override
  String get tableName => 'feed_interview';

  @override
  FeedInterviewRow createRow(Map<String, dynamic> data) =>
      FeedInterviewRow(data);
}

class FeedInterviewRow extends SupabaseDataRow {
  FeedInterviewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FeedInterviewTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get interviewHero => getField<String>('interview_hero');
  set interviewHero(String? value) => setField<String>('interview_hero', value);

  String? get introduction => getField<String>('introduction');
  set introduction(String? value) => setField<String>('introduction', value);

  String? get speciality => getField<String>('speciality');
  set speciality(String? value) => setField<String>('speciality', value);

  String? get quote => getField<String>('quote');
  set quote(String? value) => setField<String>('quote', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  String? get mainPart => getField<String>('main_part');
  set mainPart(String? value) => setField<String>('main_part', value);

  String? get interviewUrl => getField<String>('interview_url');
  set interviewUrl(String? value) => setField<String>('interview_url', value);
}
