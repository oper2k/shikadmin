import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get birthDate => getField<String>('birth_date');
  set birthDate(String? value) => setField<String>('birth_date', value);

  String? get photoUrl => getField<String>('photo_url');
  set photoUrl(String? value) => setField<String>('photo_url', value);

  String? get artDirection => getField<String>('art_direction');
  set artDirection(String? value) => setField<String>('art_direction', value);

  String? get knowledgeLevel => getField<String>('knowledge_level');
  set knowledgeLevel(String? value) =>
      setField<String>('knowledge_level', value);

  int? get rating => getField<int>('rating');
  set rating(int? value) => setField<int>('rating', value);

  int? get role => getField<int>('role');
  set role(int? value) => setField<int>('role', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  DateTime? get lastSession => getField<DateTime>('last_session');
  set lastSession(DateTime? value) => setField<DateTime>('last_session', value);
}
