import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:kmh/appointments/package.dart';

class AppointmentResultDialog extends HookWidget {
  final String _title;
  final List<MapEntry<String, AppointmentState>> _options;

  const AppointmentResultDialog(this._title, this._options, {super.key});

  @override
  Widget build(BuildContext context) {
    final result = useState(AppointmentResult.open());
    final textController = useTextEditingController();

    return SimpleDialog(
      contentPadding: const EdgeInsets.all(8),
      title: Text(_title),
      children: [
        for (final option in _options)
          _DialogButton(
            option.key,
            option.value,
            result,
          ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            maxLength: 1024,
            decoration: const InputDecoration(
              labelText: 'Kommentar',
              hintText: '(optional)',
            ),
            controller: textController,
            keyboardType: TextInputType.multiline,
            maxLines: 6,
          ),
        ),
        ElevatedButton(
          onPressed: result.value == AppointmentResult.open()
              ? null
              : () => _handleOk(
                    context,
                    result.value,
                    textController.text,
                  ),
          child: const Text('Ok'),
        ),
      ],
    );
  }

  void _handleOk(
    BuildContext context,
    AppointmentResult result,
    String comment,
  ) =>
      context.pop(
        result.copyWith(
          comment: comment,
        ),
      );
}

class _DialogButton extends StatelessWidget {
  final String _label;
  final AppointmentState _state;
  final ValueNotifier<AppointmentResult> _result;

  const _DialogButton(this._label, this._state, this._result);

  @override
  Widget build(BuildContext context) => RadioMenuButton<AppointmentState>(
        value: _state,
        groupValue: _result.value.state,
        onChanged: (value) => _onChanged(value),
        child: Text(_label),
      );

  void _onChanged(AppointmentState? state) =>
      _result.value = _result.value.copyWith(
        state: state!,
      );
}
