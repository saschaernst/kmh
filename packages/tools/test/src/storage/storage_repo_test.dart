// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';
// import 'package:stash/stash_api.dart';
// import 'package:tools/storage.dart';

// class _MockStorage<T> extends Mock implements Vault<T> {}

// void main() {
//   group(
//     'StorageRepo',
//     () {
//       const existingKey = 'a';
//       const missingKey = 'b';
//       const defaultValue = 0;
//       const storedValue = 1;
//       const otherValue = 2;

//       late Vault<int> storage;
//       late StorageRepo1<int> repo;

//       setUp(
//         () {
//           storage = _MockStorage<int>();
//           when(
//             () => storage.put(any<String>(), any<int>()),
//           ).thenAnswer((_) async {});

//           repo = LocalStorageRepo1(
//             storage,
//             {existingKey: storedValue},
//             () => defaultValue,
//           );
//         },
//       );

//       group(
//         'hasKey',
//         () {
//           test(
//             'confirms existing key',
//             () => expect(repo.hasKey(existingKey), isTrue),
//           );

//           test(
//             'confirms missing key',
//             () => expect(repo.hasKey(missingKey), isFalse),
//           );
//         },
//       );

//       group(
//         'read',
//         () {
//           test(
//             'return stored value for exitsting key',
//             () {
//               final result = repo.read(existingKey);

//               expect(result, storedValue);
//             },
//           );

//           test(
//             'return default value for missing key',
//             () {
//               final result = repo.read(missingKey);

//               expect(result, defaultValue);
//             },
//           );
//         },
//       );

//       group(
//         'add',
//         () {
//           test(
//             'add new key/value pair',
//             () async {
//               await repo.add(missingKey, otherValue);

//               verify(() => storage.put(missingKey, otherValue)).called(1);
//               expect(repo.read(missingKey), otherValue);
//             },
//           );

//           test(
//             'add existing key with new value',
//             () async {
//               await repo.add(existingKey, otherValue);

//               verify(() => storage.put(existingKey, otherValue)).called(1);
//               expect(repo.read(existingKey), otherValue);
//             },
//           );
//         },
//       );

//       group(
//         'update',
//         () {
//           test(
//             'update value by key',
//             () async {
//               final wasUpdated = await repo.update(
//                 existingKey,
//                 (value) => otherValue,
//               );

//               verify(() => storage.put(existingKey, otherValue)).called(1);
//               expect(wasUpdated, isTrue);
//               expect(repo.read(existingKey), otherValue);
//             },
//           );

//           test(
//             'ignore update when key does not exist',
//             () async {
//               final wasUpdated =
//                   await repo.update(missingKey, (value) => otherValue);

//               verifyNever(() => storage.put(any<String>(), any<int>()));
//               expect(wasUpdated, isFalse);
//               expect(repo.read(missingKey), defaultValue);
//             },
//           );
//         },
//       );

//       group(
//         'delete',
//         () {
//           setUp(
//             () {
//               when(
//                 () => storage.remove(any<String>()),
//               ).thenAnswer((_) async {});
//             },
//           );
//           test(
//             'delete existing key',
//             () async {
//               final wasDeleted = await repo.delete(existingKey);

//               verify(() => storage.remove(existingKey)).called(1);
//               expect(wasDeleted, isTrue);
//               expect(repo.hasKey(existingKey), isFalse);
//             },
//           );

//           test(
//             'ignore missing key',
//             () async {
//               final wasDeleted = await repo.delete(missingKey);

//               verifyNever(() => storage.remove(any<String>()));
//               expect(wasDeleted, isFalse);
//             },
//           );
//         },
//       );
//     },
//   );
// }
