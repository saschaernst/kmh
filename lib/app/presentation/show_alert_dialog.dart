import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Future<T?> showAlertDialog<T>(
  BuildContext context,
  String title,
  String content, [
  List<MapEntry<String, T>> options = const [],
]) {
  final actions = options.isEmpty
      ? [
          TextButton(
            child: const Text("OK"),
            onPressed: () => context.pop(),
          )
        ]
      : [
          for (final option in options)
            TextButton(
              child: Text(option.key),
              onPressed: () => context.pop(option.value),
            ),
        ];

  return showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: actions,
    ),
  );
}
