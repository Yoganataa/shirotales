import 'package:flutter/material.dart';
import 'package:shiro/src/page/home/widget/custom_app_bar.dart';
import 'package:shiro/src/page/book/widgets/books.dart';
import 'package:shiro/src/settings/settings_controller.dart';

class BookListPage extends StatelessWidget {
  final SettingsController settingsController;

  const BookListPage({Key? key, required this.settingsController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomAppBar(settingsController: settingsController),
        ListBook(),
      ],
    );
  }
}
