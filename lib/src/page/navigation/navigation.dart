import 'package:flutter/material.dart';
import 'package:shiro/src/page/home/home.dart';
import 'package:shiro/src/page/profile/profile.dart';
import 'package:shiro/src/page/book/book_list.dart';
import 'package:shiro/src/page/mark/bookmark.dart';
import 'package:shiro/src/page/navigation/constants/text_style.dart';
import 'package:shiro/src/page/navigation/data/model.dart';
import 'package:shiro/src/page/navigation/widgets/custom_paint.dart';
import 'package:shiro/src/settings/settings_controller.dart';

class NavigationPage extends StatefulWidget {
  final SettingsController settingsController;
  final String token;

  const NavigationPage({
    Key? key,
    required this.settingsController,
    required this.token,
  }) : super(key: key);

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPage(_currentIndex),
      bottomNavigationBar: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        height: 70.0,
        child: _buildNavigationBar(context),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _currentIndex = 2;
          });
        },
        child: Image.asset(
          'assets/icon/qrc.png',
          color: Colors.white,
        ),
        backgroundColor: const Color(0xFF4448FF),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return HomePage(settingsController: widget.settingsController);
      case 1:
        return BookListPage(settingsController: widget.settingsController);
      case 2:
        return Container(); // QR
      case 3:
        return BookMarkPage(settingsController: widget.settingsController);
      case 4:
        return ProfilePage(
          settingsController: widget.settingsController,
          token: widget.token,
        );
      default:
        return Container();
    }
  }

  Widget _buildNavigationBar(BuildContext context) {
    bool isLightTheme = Theme.of(context).brightness == Brightness.light;

    return Container(
      decoration: BoxDecoration(
        color: isLightTheme ? Colors.white : Colors.black,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (int i = 0; i < navBtn.length; i++)
            if (navBtn[i].id != 2)
              GestureDetector(
                onTap: () => setState(() => _currentIndex = i),
                child: _buildNavItem(
                  context: context,
                  index: i,
                  iconPath: navBtn[i].imagePath,
                  label: navBtn[i].name,
                ),
              ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required BuildContext context,
    required int index,
    required String iconPath,
    required String label,
  }) {
    bool isActive = _currentIndex == index;
    bool isLightTheme = Theme.of(context).brightness == Brightness.light;
    Color activeIconColor = isLightTheme ? const Color(0xFF4448FF) : Colors.white;
    Color inactiveIconColor = isLightTheme ? Colors.grey : Colors.white;

    return SizedBox(
      width: 75.0,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: AnimatedContainer(
              height: isActive ? 60.0 : 0.0,
              width: 50.0,
              duration: const Duration(milliseconds: 600),
              child: isActive
                  ? CustomPaint(
                      painter: ButtonNotch(context),
                    )
                  : const SizedBox(),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              iconPath,
              color: isActive ? activeIconColor : inactiveIconColor,
              scale: 2,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              label,
              style: isActive
                  ? bntText.copyWith(color: activeIconColor)
                  : bntText.copyWith(color: inactiveIconColor),
            ),
          ),
        ],
      ),
    );
  }
}
