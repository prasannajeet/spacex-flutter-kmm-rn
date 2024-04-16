import 'package:flutter/material.dart';
import 'package:spacex_company_info/presentation/company_info_screen.dart';
import 'package:spacex_flutter/presentation/spacex_home_tab_item.dart';
import 'package:spacex_launches/presentation/spacex_launches_screen.dart';
import 'package:spacex_rockets/presentation/spacex_rockets_screen.dart';

class SpaceXHomeScreen extends StatefulWidget {
  const SpaceXHomeScreen({super.key});

  @override
  State<SpaceXHomeScreen> createState() => _SpaceXHomeScreenState();

  static const routeName = '/home';
}

class _SpaceXHomeScreenState extends State<SpaceXHomeScreen> {
  var selectedTab = SpaceXHomeTabItem.about;

  Widget _buildTabContent() {
    switch (selectedTab) {
      case SpaceXHomeTabItem.about:
        return const CompanyInfoScreen();
      case SpaceXHomeTabItem.launches:
        return const SpaceXLaunchesScreen();
      case SpaceXHomeTabItem.rockets:
        return const SpaceXRocketsScreen();
      default:
        return const Center(
          child: Text('Invalid Tab'),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _buildTabContent()),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedTab.index,
        onTap: (index) {
          setState(() {
            selectedTab = SpaceXHomeTabItem.values[index];
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rocket_launch),
            label: 'Launches',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rocket),
            label: 'Rockets',
          ),
        ],
      ),
    );
  }
}
