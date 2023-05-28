import '../database.dart';

class CoursesLessonsTable extends SupabaseTable<CoursesLessonsRow> {
  @override
  String get tableName => 'courses_lessons';

  @override
  CoursesLessonsRow createRow(Map<String, dynamic> data) =>
      CoursesLessonsRow(data);
}

class CoursesLessonsRow extends SupabaseDataRow {
  CoursesLessonsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CoursesLessonsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get courseId => getField<int>('course_id');
  set courseId(int? value) => setField<int>('course_id', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get videoUrl => getField<String>('video_url');
  set videoUrl(String? value) => setField<String>('video_url', value);

  bool? get openStatus => getField<bool>('open_status');
  set openStatus(bool? value) => setField<bool>('open_status', value);

  int? get lessonNumber => getField<int>('lesson_number');
  set lessonNumber(int? value) => setField<int>('lesson_number', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);
}
