import '../database.dart';

class FeedPlaylistsAudioTable extends SupabaseTable<FeedPlaylistsAudioRow> {
  @override
  String get tableName => 'feed_playlists_audio';

  @override
  FeedPlaylistsAudioRow createRow(Map<String, dynamic> data) =>
      FeedPlaylistsAudioRow(data);
}

class FeedPlaylistsAudioRow extends SupabaseDataRow {
  FeedPlaylistsAudioRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FeedPlaylistsAudioTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get playlistId => getField<int>('playlist_id');
  set playlistId(int? value) => setField<int>('playlist_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get audioUrl => getField<String>('audio_url');
  set audioUrl(String? value) => setField<String>('audio_url', value);
}
