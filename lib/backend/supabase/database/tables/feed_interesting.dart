import '../database.dart';

class FeedInterestingTable extends SupabaseTable<FeedInterestingRow> {
  @override
  String get tableName => 'feed_interesting';

  @override
  FeedInterestingRow createRow(Map<String, dynamic> data) =>
      FeedInterestingRow(data);
}

class FeedInterestingRow extends SupabaseDataRow {
  FeedInterestingRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FeedInterestingTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get content => getField<String>('content');
  set content(String? value) => setField<String>('content', value);
}
