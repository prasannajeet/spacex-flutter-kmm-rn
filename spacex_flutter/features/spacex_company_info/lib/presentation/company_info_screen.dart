import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spacex_design/state_display.dart';
import '../di/company_info_di.dart';

class CompanyInfoScreen extends ConsumerWidget {
  const CompanyInfoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(companyInfoProvider);
    return Scaffold(
      backgroundColor: Colors.grey,
      body: RefreshIndicator(
        onRefresh: () {
          ref.read(companyInfoProvider.notifier).fetchCompanyInfo();
          return Future.value();
        },
        child: StateDisplayWidget(state: state, onSuccess: (data) => Text(data.toString())
      ),
      ),
    );
  }
}
