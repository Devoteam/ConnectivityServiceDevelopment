import 'package:connect_service_app/common/presentation/device_specific_ui.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:connect_service_app/navigation/app_navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShellNavigationScaffold extends StatefulWidget {
  final Widget child;

  const ShellNavigationScaffold({
    super.key,
    required this.child,
  });

  @override
  State<ShellNavigationScaffold> createState() => _ShellNavigationScaffoldState();
}

class _ShellNavigationScaffoldState extends State<ShellNavigationScaffold> {
  int currentIndex = 0;

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
        child: widget.child,
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
                  elevation: 32,
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
                  child: widget.child,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _getNavigationItems(BuildContext context) {
    return [
      ListTile(
        leading: const Icon(Icons.wifi_outlined),
        title: Text(
          AppLocalizations.of(context)!.skodaConnectServicesSectionTitle,
          style: const TextStyle(
            decoration: TextDecoration.underline,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 32.0),
        child: ListTile(
          title: Text(AppLocalizations.of(context)!.careConnectRemoteAccess),
          onTap: () => _changeTab(0),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 32.0),
        child: ListTile(
          title: Text(AppLocalizations.of(context)!.infotainmentOnline),
          onTap: () => _changeTab(1),
        ),
      ),
      ListTile(
        leading: const Icon(Icons.connected_tv_outlined),
        title: Text(
          AppLocalizations.of(context)!.infotainmentApps,
          style: const TextStyle(
            decoration: TextDecoration.underline,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 32.0),
        child: ListTile(
          title: Text(AppLocalizations.of(context)!.traffication),
          onTap: () => _changeTab(2),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 32.0),
        child: ListTile(
          title: Text(AppLocalizations.of(context)!.payToPark),
          onTap: () => _changeTab(3),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 32.0),
        child: ListTile(
          title: Text(AppLocalizations.of(context)!.payToFuel),
          onTap: () => _changeTab(4),
        ),
      ),
      ListTile(
        leading: const Icon(
          Icons.tab_outlined,
        ),
        title: Text(
          AppLocalizations.of(context)!.functionsOnDemand,
          style: const TextStyle(
            decoration: TextDecoration.underline,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 32.0),
        child: ListTile(
          title: Text(AppLocalizations.of(context)!.ambientLighting),
          onTap: () => _changeTab(5),
        ),
      ),
    ];
  }

  void _changeTab(int index) {
    context.go(
      index.routeBasedOnIndex,
    );
    setState(() {
      currentIndex = index;
    });
  }
}
