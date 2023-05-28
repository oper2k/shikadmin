import '../database.dart';

class FeedFactsTable extends SupabaseTable<FeedFactsRow> {
  @override
  String get tableName => 'feed_facts';

  @override
  FeedFactsRow createRow(Map<String, dynamic> data) => FeedFactsRow(data);
}

class FeedFactsRow extends SupabaseDataRow {
  FeedFactsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FeedFactsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get previewImageUrl => getField<String>('preview_image_url');
  set previewImageUrl(String? value) =>
      setField<String>('preview_image_url', value);

  String? get contentImageUrl => getField<String>('content_image_url');
  set contentImageUrl(String? value) =>
      setField<String>('content_image_url', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get content => getField<String>('content');
  set content(String? value) => setField<String>('content', value);
}
