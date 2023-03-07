import 'dart:async';
import 'dart:ui';
import 'package:flutter_hooks/flutter_hooks.dart';

void useTimeout(VoidCallback callback, Duration delay) {
  final savedCallback = useRef(callback)..value = callback;

  useEffect(
    () => Timer(delay, () => savedCallback.value()).cancel,
    [delay],
  );
}

void useInterval(
  void Function(Timer) a,
  VoidCallback callback,
  Duration delay,
) {
  final savedCallback = useRef(callback)..value = callback;

  useEffect(
    () => Timer.periodic(
      delay,
      (timer) => savedCallback.value(),
    ).cancel,
    [delay],
  );
}
