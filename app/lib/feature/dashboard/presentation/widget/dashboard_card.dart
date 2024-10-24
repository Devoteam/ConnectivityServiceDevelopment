import 'package:flutter/material.dart';

import '../../../../common/presentation/device_specific_ui.dart';
import '../../domain/entity/dashboard_entry.dart';

class DashboardCard extends StatelessWidget {
  final DashboardEntry dashboardEntry;

  const DashboardCard({
    super.key,
    required this.dashboardEntry,
  });

  @override
  Widget build(BuildContext context) {
    return DeviceSpecificUI(
      mobileUi: _buildCard(
        isMobile: true,
        imageSize: const Size(90, 60),
        imagePadding: const EdgeInsets.only(left: 20),
        contentPadding: const EdgeInsets.symmetric(vertical: 18, horizontal: 24),
      ),
      automotiveUi: _buildCard(
        isMobile: false,
        imageSize: const Size(256, 160),
        imagePadding: const EdgeInsets.only(left: 8),
        contentPadding: const EdgeInsets.symmetric(vertical: 36, horizontal: 0),
      ),
    );
  }

  Widget _buildCard({
    required bool isMobile,
    required Size imageSize,
    required EdgeInsets imagePadding,
    required EdgeInsets contentPadding,
  }) {
    return Card(
      child: Padding(
        padding: contentPadding,
        child:
            isMobile ? _buildMobileContent(imageSize, imagePadding) : _buildAutomotiveContent(imageSize, imagePadding),
      ),
    );
  }

  Widget _buildMobileContent(Size imageSize, EdgeInsets imagePadding) {
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
        _buildStatusRow(),
      ],
    );
  }

  Widget _buildAutomotiveContent(Size imageSize, EdgeInsets imagePadding) {
    return Row(
      children: [
        Padding(
          padding: imagePadding,
          child: _buildImage(imageSize),
        ),
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
                    _buildActiveStatus(),
                  ],
                ),
                const SizedBox(height: 12),
                _buildDescription(),
                const SizedBox(height: 12),
                Align(
                  alignment: Alignment.centerRight,
                  child: _buildLicenseInfo(),
                ),
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
        dashboardEntry.imageUrl,
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      dashboardEntry.name,
      style: TextStyle(fontWeight: FontWeight.bold),
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildLicenseInfo() {
    return const Text('Current licence ends: 01.01.2020');
  }

  Widget _buildActiveStatus() {
    return const Row(
      children: [
        Icon(Icons.check),
        SizedBox(width: 4),
        Text('Active'),
      ],
    );
  }

  Widget _buildStatusRow() {
    return Row(
      children: [
        _buildLicenseInfo(),
        const Spacer(),
        _buildActiveStatus(),
      ],
    );
  }

  Widget _buildDescription() {
    return Text(
      dashboardEntry.description,
    );
  }
}
