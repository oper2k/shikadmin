import '../database.dart';

class MapTable extends SupabaseTable<MapRow> {
  @override
  String get tableName => 'map';

  @override
  MapRow createRow(Map<String, dynamic> data) => MapRow(data);
}

class MapRow extends SupabaseDataRow {
  MapRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MapTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get adress => getField<String>('adress');
  set adress(String? value) => setField<String>('adress', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  double? get lat => getField<double>('lat');
  set lat(double? value) => setField<double>('lat', value);

  double? get lng => getField<double>('lng');
  set lng(double? value) => setField<double>('lng', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get profession => getField<String>('profession');
  set profession(String? value) => setField<String>('profession', value);
}
