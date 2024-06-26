import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spacex_design/state_display.dart';
import 'package:spacex_launches/di/launches_di.dart';

class SpaceXLaunchesScreen extends ConsumerWidget {
  const SpaceXLaunchesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(spacexLaunchesStateProvider);
    return Scaffold(
      backgroundColor: Colors.grey,
      body: RefreshIndicator(
        onRefresh: () {
          return ref.read(spacexLaunchesStateProvider.notifier).fetchLaunches();
        },
        child: StateDisplayWidget(state: state, onSuccess: (data) => Text(data.toString())
        ),
      ),
    );
  }
}
