import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:tools/utils.dart';

class AssetSource {
  final AssetBundle _assetBundle;

  AssetSource(this._assetBundle);

  Future<List<T>> loadList<T>(
    String path,
    JsonConvert<T> convert,
  ) async {
    final json = await _loadJson<JsonList>(path);

    return _parseList(json, convert);
  }

  Future<Map<String, T>> loadMap<T>(
    String path,
    JsonConvert<T> convert,
  ) async {
    final json = await _loadJson<JsonMap>(path);
    final data = _parseMap<T>(json, convert);

    return data;
  }

  Future<Map<String, List<T>>> loadMapOfLists<T>(
    String path,
    JsonConvert<T> convert,
  ) async {
    final json = await _loadJson<JsonMap>(path);

    return json.map(
      (key, data) => MapEntry(key, _parseList(data as JsonList, convert)),
    );
  }

  Future<T> _loadJson<T>(String path) async {
    final source = await _assetBundle.loadString(path);

    return jsonDecode(source) as T;
  }

  Map<String, T> _parseMap<T>(JsonMap data, JsonConvert<T> convert) => data.map(
        (key, value) => MapEntry(
          key,
          convert(value as JsonMap),
        ),
      );

  List<T> _parseList<T>(JsonList data, JsonConvert<T> convert) => data
      .map<T>(
        (a) => convert(a as JsonMap),
      )
      .toList(growable: false);
}
