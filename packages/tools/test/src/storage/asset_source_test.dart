import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tools/storage.dart';

class _MockAssetBundle extends Mock implements AssetBundle {}

const _id = 'id';
const _anyId = 'anyId';
const _jsonList = '[{"$_id": "$_anyId"}]';

class _Data {
  final String id;

  _Data(this.id);

  factory _Data.fromJson(Map<String, dynamic> json) => _Data(json[_id]);
}

void main() {
  const path = '/any/path';

  late AssetBundle bundle;
  late AssetSource source;

  setUp(
    () {
      bundle = _MockAssetBundle();
      source = AssetSource(bundle);
    },
  );

  group(
    'AssetSource',
    () {
      group(
        'loadList',
        () {
          test(
            'load a list of json objects',
            () async {
              when(
                () => bundle.loadString(path),
              ).thenAnswer((_) async => _jsonList);

              final result = await source.loadList(path, _Data.fromJson);

              expect(result.length, 1);
              expect(result.first.id, _anyId);
            },
          );
        },
      );
    },
  );
}
