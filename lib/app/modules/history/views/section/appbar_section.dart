import 'package:flutter/material.dart';
import 'package:my_packages_pack/my_packages.dart';

class AppBarSection extends StatelessWidget {
  const AppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        backgroundColor: kWhite,
        pinned: true,
        title: Text('Riwayat service',
            style: AppTextTheme.current.appbarTextLight));
  }
}
