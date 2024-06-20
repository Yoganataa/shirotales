import 'package:flutter/material.dart';
import 'package:shiro/src/page/home/widget/custom_app_bar.dart';
import 'package:shiro/src/page/mark/widgets/marks.dart';
import 'package:shiro/src/settings/settings_controller.dart';

class BookMarkPage extends StatelessWidget {
  final SettingsController settingsController;

  const BookMarkPage({Key? key, required this.settingsController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomAppBar(settingsController: settingsController),
        MarkBook(),
      ],
    );
  }
}
