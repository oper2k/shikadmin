import '../database.dart';

class FeedPlaylistsTable extends SupabaseTable<FeedPlaylistsRow> {
  @override
  String get tableName => 'feed_playlists';

  @override
  FeedPlaylistsRow createRow(Map<String, dynamic> data) =>
      FeedPlaylistsRow(data);
}

class FeedPlaylistsRow extends SupabaseDataRow {
  FeedPlaylistsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FeedPlaylistsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
