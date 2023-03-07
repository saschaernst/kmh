import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;
import 'package:stash/stash_api.dart';
import 'package:stash_sembast/stash_sembast.dart';
import 'package:stash_sembast_web/stash_sembast_web.dart';
import 'package:storage_tools/local.dart';
import 'package:tools/utils.dart';

Future<Vault<TValue>> createSembastSource<TValue>(
  String id,
  TValue Function(JsonMap data) fromDB,
) async {
  final store = await _getStore();
  final vault = await store.vault<TValue>(
    name: id,
    fromEncodable: fromDB,
  );

  return vault;
}

Future<TStorage>
    createSembastRepo<TStorage extends LocalStorageRepo<TValue>, TValue>(
  String id,
  TValue Function(JsonMap data) fromDB,
  TStorage Function(Vault<TValue> v) builder,
) async {
  final vault = await createSembastSource(id, fromDB);

  final storage = builder(vault);
  await storage.init();

  return storage;
}

Future<SembastVaultStore> _getStore() async => kIsWeb
    ? await newSembastWebVaultStore()
    : await newSembastLocalVaultStore(path: await _getPath());

Future<String> _getPath([
  String? basePath,
  String fileName = 'sembast.db',
]) async =>
    p.join(
      basePath ?? await getAppPath(),
      fileName,
    );
