import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../common/presentation/device_specific_ui.dart';
import '../../domain/entity/dashboard_entry.dart';
import '../cubit/dashboard_card_cubit.dart';
import '../cubit/dashboard_card_state.dart';

class DashboardCard extends StatefulWidget {
  final DashboardEntry dashboardEntry;
  final bool isActive;

  const DashboardCard({
    super.key,
    required this.dashboardEntry,
    required this.isActive,
  });

  @override
  State<DashboardCard> createState() => _DashboardCardState();
}

class _DashboardCardState extends State<DashboardCard> {
  @override
  void initState() {
    super.initState();

    BlocProvider.of<DashboardCardCubit>(context).setInitialState(widget.isActive);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCardCubit, DashboardCardState>(builder: (context, state) {
      return DeviceSpecificUI(
        mobileUi: _buildCard(
          isMobile: true,
          imageSize: const Size(90, 60),
          imagePadding: const EdgeInsets.only(left: 20),
          contentPadding: const EdgeInsets.symmetric(vertical: 18, horizontal: 24),
          state: state,
        ),
        automotiveUi: _buildCard(
          isMobile: false,
          imageSize: const Size(256, 160),
          imagePadding: const EdgeInsets.only(left: 8),
          contentPadding: const EdgeInsets.symmetric(vertical: 36, horizontal: 24),
          state: state,
        ),
      );
    });
  }

  Widget _buildCard({
    required bool isMobile,
    required Size imageSize,
    required EdgeInsets imagePadding,
    required EdgeInsets contentPadding,
    required DashboardCardState state,
  }) {
    return Card(
      elevation: 8,
      child: Padding(
        padding: contentPadding,
        child: isMobile
            ? _buildMobileContent(imageSize, imagePadding, state)
            : _buildAutomotiveContent(imageSize, imagePadding, state),
      ),
    );
  }

  Widget _buildMobileContent(Size imageSize, EdgeInsets imagePadding, DashboardCardState state) {
    return Column(
      children: [
        Row(
          children: [
            _buildImage(imageSize),
            Flexible(
              child: Padding(
                padding: imagePadding,
                child: _buildTitle(),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        _buildDescription(),
        const SizedBox(height: 12),
        _buildStatusRow(state),
      ],
    );
  }

  Widget _buildAutomotiveContent(Size imageSize, EdgeInsets imagePadding, DashboardCardState state) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildImage(imageSize),
        Expanded(
          child: Padding(
            padding: imagePadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildTitle(),
                    _buildActiveStatus(state),
                  ],
                ),
                const SizedBox(height: 12),
                _buildDescription(),
                if (state is DashboardContent) ...[
                  if (state.isActive) ...[
                    const SizedBox(height: 48),
                    Align(
                      alignment: Alignment.centerRight,
                      child: _buildLicenseInfo(),
                    ),
                  ]
                ]
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildImage(Size size) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Image.network(
        widget.dashboardEntry.imageUrl,
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      widget.dashboardEntry.name,
      style: TextStyle(fontWeight: FontWeight.bold),
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildLicenseInfo() {
    return Text(AppLocalizations.of(context)!.licenceEndDate);
  }

  Widget _buildActiveStatus(DashboardCardState state) {
    return state.when(
      dashboardLoading: () => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 48,
        ),
        child: CircularProgressIndicator(),
      ),
      dashboardContent: (isActive) => isActive
          ? Row(
              children: [
                Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                SizedBox(width: 4),
                Text(AppLocalizations.of(context)!.active),
              ],
            )
          : ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: BlocProvider.of<DashboardCardCubit>(context).onSubscribedClicked,
              child: Text(AppLocalizations.of(context)!.subscribe,
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
    );
  }

  Widget _buildStatusRow(DashboardCardState state) {
    return Row(
      children: [
        if (state is DashboardContent) ...[
          if (state.isActive) ...[
            _buildLicenseInfo(),
          ],
        ],
        const Spacer(),
        _buildActiveStatus(state),
      ],
    );
  }

  Widget _buildDescription() {
    return Text(
      widget.dashboardEntry.description,
    );
  }
}
