import 'package:stash/stash_api.dart';

extension VaultExtension<TValue> on Vault<TValue> {
  Future<Map<String, TValue>> loadData() async {
    final allKeys = await keys;
    final data = await getAll(allKeys.toSet());
    final entries = <String, TValue>{};

    for (final pair in data.entries) {
      if (pair.value != null) {
        entries[pair.key] = pair.value as TValue;
      }
    }

    return entries;
  }
}
