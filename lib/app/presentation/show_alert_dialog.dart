import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Future<void> showAlertDialog(
  BuildContext context,
  String title,
  String content,
) =>
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            child: const Text("OK"),
            onPressed: () => context.pop(),
          ),
        ],
      ),
    );
