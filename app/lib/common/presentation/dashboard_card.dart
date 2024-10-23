import 'package:connect_service_app/common/presentation/device_specific_ui.dart';
import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DeviceSpecificUI(
      mobileUi: _buildCard(
        isMobile: true,
        imageSize: const Size(72, 48),
        imagePadding: const EdgeInsets.only(left: 20),
        contentPadding: const EdgeInsets.symmetric(vertical: 36, horizontal: 24),
      ),
      automotiveUi: _buildCard(
        isMobile: false,
        imageSize: const Size(256, 128),
        imagePadding: const EdgeInsets.only(left: 72),
        contentPadding: const EdgeInsets.symmetric(vertical: 36, horizontal: 24),
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
            Padding(
              padding: imagePadding,
              child: _buildTitle(),
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
      child: const Placeholder(),
    );
  }

  Widget _buildTitle() {
    return const Text(
      'Care Connect - RemoteAccess',
      style: TextStyle(fontWeight: FontWeight.bold),
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
    return const Text(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean placerat tincidunt erat. Donec convallis, nulla sed maximus rutrum, est mi congue felis, nec rhoncus eros elit non leo. Aenean at molestie ante. Quisque ut ultrices nisl.',
    );
  }
}
