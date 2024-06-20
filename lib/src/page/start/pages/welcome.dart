import 'package:flutter/material.dart';
import 'package:shiro/src/page/start/pages/signin.dart';
import 'package:shiro/src/page/start/pages/signup.dart';
import 'package:shiro/src/page/start/theme/theme.dart';
import 'package:shiro/src/page/start/widgets/custom_scaffold.dart';
import 'package:shiro/src/page/start/widgets/welcome_button.dart';
import 'package:shiro/src/settings/settings_controller.dart';
import 'package:shiro/src/page/navigation/navigation.dart';

class WelcomePage extends StatelessWidget {
  final SettingsController settingsController;

  const WelcomePage({
    Key? key,
    required this.settingsController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
            flex: 8,
            child: GestureDetector(
              onTap: () {
                // Create a guest token
                const String guestToken = 'guest';

                // Navigate to NavigationPage with guest token
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NavigationPage(
                      settingsController: settingsController,
                      token: guestToken,
                    ),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 40.0,
                ),
                child: Center(
                  child: Card(
                    color: Colors.white
                        .withOpacity(0.3), // glass-like transparency
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Hi, Shiroians!\n',
                              style: TextStyle(
                                fontSize: 45.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            TextSpan(
                              text:
                                  'Welcome to Shiro Tales, your go-to light novel app! Tap card for guests',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign in',
                      onTap: SignInScreen(
                        settingsController: settingsController,
                      ),
                      color: Colors.transparent,
                      textColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign up',
                      onTap: SignUpScreen(
                        settingsController: settingsController,
                      ),
                      color: Colors.white,
                      textColor: lightColorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
