import 'package:state_notifier/state_notifier.dart';

mixin ListenersMixin {
  final List<Function()> _listeners = [];

  void addListener(Function() listener) => _listeners.add(listener);

  void addByNotifier<T>(
    StateNotifier<T> notifier,
    void Function(T state) handler, {
    bool fireImmediately = true,
  }) {
    final listener = notifier.addListener(
      handler,
      fireImmediately: fireImmediately,
    );
    addListener(listener);
  }

  void disposeListeners() {
    for (final listener in _listeners) {
      listener();
    }

    _listeners.clear();
  }
}
