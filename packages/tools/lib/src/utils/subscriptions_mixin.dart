import 'dart:async';

import 'package:flutter/foundation.dart';

mixin SubscriptionsMixin {
  final List<StreamSubscription> _subs = [];

  @protected
  void addSub(StreamSubscription sub) => _subs.add(sub);

  @protected
  bool hasSub(StreamSubscription sub) => _subs.contains(sub);

  @protected
  Future<bool> removeSub(StreamSubscription sub) async {
    await sub.cancel();

    return _subs.remove(sub);
  }

  @protected
  Future<void> disposeSubs() async {
    await Future.wait(_subs.map((e) => e.cancel()));

    _subs.clear();
  }
}
