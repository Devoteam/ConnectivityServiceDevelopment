import 'package:flutter/material.dart';

import '../../../../common/presentation/device_specific_ui.dart';
import '../../domain/entity/nav_drawer_entry.dart';

class DashboardContentWithNavDrawer extends StatelessWidget {
  final List<NavDrawerEntry> navDrawerEntries;
  final Function(int) onNacDrawerEntryClicked;
  final Widget child;

  const DashboardContentWithNavDrawer({
    super.key,
    required this.navDrawerEntries,
    required this.onNacDrawerEntryClicked,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return DeviceSpecificUI(
      mobileUi: _buildCollapsedDrawerLayout(context),
      automotiveUi: _buildExpandedDrawerLayout(context),
    );
  }

  Widget _buildCollapsedDrawerLayout(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: NavigationDrawer(
        children: _getNavigationItems(context),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: child,
      ),
    );
  }

  Widget _buildExpandedDrawerLayout(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 36,
            horizontal: 24,
          ),
          child: Flex(
            crossAxisAlignment: CrossAxisAlignment.start,
            direction: Axis.horizontal,
            children: [
              Expanded(
                flex: 2,
                child: Drawer(
                  elevation: 8,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        40,
                      ),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: _getNavigationItems(context),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: child,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _getNavigationItems(BuildContext context) {
    final List<Widget> navItems = [];
    int navItemIndex = 0;

    for (var navDrawerEntry in navDrawerEntries) {
      navItems.add(_buildCategoryHeader(navDrawerEntry.category));
      for (var navDrawerEntryName in navDrawerEntry.names) {
        navItems.add(_buildNavDrawerEntry(context, navDrawerEntryName, navItemIndex));
        navItemIndex++;
      }
    }

    return navItems;
  }

  Widget _buildCategoryHeader(String title) {
    return ListTile(
      leading: const Icon(Icons.menu),
      title: Text(
        title,
        style: const TextStyle(
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }

  Widget _buildNavDrawerEntry(BuildContext context, String title, int index) {
    return Padding(
      padding: const EdgeInsets.only(left: 40.0),
      child: ListTile(
        title: Text(title),
        onTap: () {
          if (Navigator.of(context).canPop()) {
            Navigator.of(context).pop();
          }

          onNacDrawerEntryClicked(index);
        },
      ),
    );
  }
}
