import '../database.dart';

class CoursesTable extends SupabaseTable<CoursesRow> {
  @override
  String get tableName => 'courses';

  @override
  CoursesRow createRow(Map<String, dynamic> data) => CoursesRow(data);
}

class CoursesRow extends SupabaseDataRow {
  CoursesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CoursesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  String? get instructorDescription =>
      getField<String>('instructor_description');
  set instructorDescription(String? value) =>
      setField<String>('instructor_description', value);

  int? get price => getField<int>('price');
  set price(int? value) => setField<int>('price', value);

  String? get instructorName => getField<String>('instructor_name');
  set instructorName(String? value) =>
      setField<String>('instructor_name', value);

  int? get lessonsCount => getField<int>('lessons_count');
  set lessonsCount(int? value) => setField<int>('lessons_count', value);

  String? get schoolAdress => getField<String>('school_adress');
  set schoolAdress(String? value) => setField<String>('school_adress', value);
}
