import 'package:event_bus/event_bus.dart';
import 'package:flutter/widgets.dart';

class LifecycleManager extends StatefulWidget {
  final Widget child;
  final EventBus eventBus;

  const LifecycleManager({
    super.key,
    required this.eventBus,
    required this.child,
  });

  @override
  State<LifecycleManager> createState() => _LifecycleManagerState();
}

class _LifecycleManagerState extends State<LifecycleManager>
    with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) =>
      widget.eventBus.fire(state);

  @override
  Widget build(BuildContext context) => widget.child;
}
