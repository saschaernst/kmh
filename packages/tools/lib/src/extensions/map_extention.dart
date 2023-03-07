extension MapExtension<TKey, TValue> on Map<TKey, TValue> {
  TValue read(TKey key, TValue Function() getDefValue) =>
      this[key] ?? getDefValue();

  List<TKey> getSortedKeys(int Function(TValue a, TValue b) comparer) {
    if (isEmpty) return [];

    final valueList = values.toList()..sort(comparer);
    final keyList = List<TKey>.filled(length, keys.first, growable: true);

    for (final entry in entries) {
      final index = valueList.indexOf(entry.value);
      keyList[index] = entry.key;
    }

    return keyList;
  }
}
