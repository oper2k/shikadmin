import '../database.dart';

class UsersFriendsTable extends SupabaseTable<UsersFriendsRow> {
  @override
  String get tableName => 'users_friends';

  @override
  UsersFriendsRow createRow(Map<String, dynamic> data) => UsersFriendsRow(data);
}

class UsersFriendsRow extends SupabaseDataRow {
  UsersFriendsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersFriendsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get userIdFriend => getField<String>('user_id_friend');
  set userIdFriend(String? value) => setField<String>('user_id_friend', value);
}
