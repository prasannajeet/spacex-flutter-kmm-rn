import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spacex_design/state_display.dart';
import 'package:spacex_rockets/di/rockets_di.dart';

class SpaceXRocketsScreen extends ConsumerWidget {
  const SpaceXRocketsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(spacexRocketsStateProvider);
    return Scaffold(
      backgroundColor: Colors.grey,
      body: RefreshIndicator(
        onRefresh: () {
          return ref.read(spacexRocketsStateProvider.notifier).fetchRockets();
        },
        child: StateDisplayWidget(state: state, onSuccess: (data) => Text(data.toString())
        ),
      ),
    );
  }
}
