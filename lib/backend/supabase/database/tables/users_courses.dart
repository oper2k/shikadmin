import '../database.dart';

class UsersCoursesTable extends SupabaseTable<UsersCoursesRow> {
  @override
  String get tableName => 'users_courses';

  @override
  UsersCoursesRow createRow(Map<String, dynamic> data) => UsersCoursesRow(data);
}

class UsersCoursesRow extends SupabaseDataRow {
  UsersCoursesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersCoursesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get courseId => getField<int>('course_id');
  set courseId(int? value) => setField<int>('course_id', value);
}
