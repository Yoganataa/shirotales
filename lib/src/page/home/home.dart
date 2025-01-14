import 'package:flutter/material.dart';
import 'package:shiro/src/page/home/widget/coming_book.dart';
import 'package:shiro/src/page/home/widget/custom_app_bar.dart';
import 'package:shiro/src/page/home/widget/recommended_book.dart';
import 'package:shiro/src/page/home/widget/trending_book.dart';
import 'package:shiro/src/settings/settings_controller.dart';

class HomePage extends StatelessWidget {
  final SettingsController settingsController;

  const HomePage({Key? key, required this.settingsController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomAppBar(settingsController: settingsController),
        ComingBook(),
        RecommendedBook(),
        TrendingBook(),
      ],
    );
  }
}
