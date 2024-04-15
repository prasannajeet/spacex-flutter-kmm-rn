import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StateDisplayWidget<T> extends StatelessWidget {
  final AsyncValue<T> state;
  final Widget Function(T data) onSuccess;

  const StateDisplayWidget({super.key, required this.state, required this.onSuccess});

  @override
  Widget build(BuildContext context) {
    return state.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, st) => Text('Error: ${e.toString()}'),
      data: (data) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: onSuccess(data),
        ),
      ),
    );
  }
}
