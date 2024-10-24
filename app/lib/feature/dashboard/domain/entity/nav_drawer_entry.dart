import 'package:freezed_annotation/freezed_annotation.dart';

part 'nav_drawer_entry.freezed.dart';

typedef NavDrawerEntries = List<NavDrawerEntry>;

@freezed
class NavDrawerEntry with _$NavDrawerEntry{
  const factory NavDrawerEntry({
    required String category,
    required List<String> names,
  }) = _NavDrawerEntry;
}