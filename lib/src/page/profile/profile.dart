import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:shiro/src/page/profile/constants/constant.dart';
import 'package:shiro/src/page/profile/widgets/edit_profile.dart';
import 'package:shiro/src/services/api_service.dart';
import 'package:shiro/src/settings/settings_controller.dart';
import 'package:shiro/src/page/profile/widgets/guest_profile_data.dart'; 

class ProfilePage extends StatefulWidget {
  final SettingsController settingsController;
  final String token; // Add a token parameter

  const ProfilePage({
    Key? key,
    required this.settingsController,
    required this.token, // Add token to the constructor
  }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final ApiService _apiService = ApiService();
  Map<String, dynamic>? profileData;

  @override
  void initState() {
    super.initState();
    _fetchProfile();
  }

  Future<void> _fetchProfile() async {
    if (widget.token == 'guest') {
      // Load guest profile data
      setState(() {
        profileData = guestProfileData;
      });
    } else {
      try {
        var response = await _apiService.getProfile(token: widget.token);
        setState(() {
          profileData = response;
        });
      } catch (e) {
        print('Error fetching profile: $e');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error fetching profile: $e')),
        );
      }
    }
  }

  Future<void> _logout() async {
    try {
      await _apiService.logout(token: widget.token);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Logged out successfully')),
      );
      // Navigate to the login screen or home screen
      // Navigator.pushReplacementNamed(context, '/login');
    } catch (e) {
      print('Error logging out: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error logging out: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(414, 896));

    var profileInfo = profileData != null
        ? Expanded(
            child: Column(
              children: <Widget>[
                Container(
                  height: kSpacingUnit.w * 10,
                  width: kSpacingUnit.w * 10,
                  margin: EdgeInsets.only(top: kSpacingUnit.w * 3),
                  child: Stack(
                    children: <Widget>[
                      CircleAvatar(
                        radius: kSpacingUnit.w * 5,
                        backgroundImage: AssetImage('assets/images/avatar.png'),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: kSpacingUnit.w * 2.5,
                          width: kSpacingUnit.w * 2.5,
                          decoration: BoxDecoration(
                            color: Theme.of(context).secondaryHeaderColor,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            heightFactor: kSpacingUnit.w * 1.5,
                            widthFactor: kSpacingUnit.w * 1.5,
                            child: Icon(
                              LineAwesomeIcons.pen_solid,
                              color: kDarkPrimaryColor,
                              size: ScreenUtil().setSp(kSpacingUnit.w * 1.5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: kSpacingUnit.w * 2),
                Text(
                  profileData!['name'] ?? 'Unknown',
                  style: kTitleTextStyle,
                ),
                SizedBox(height: kSpacingUnit.w * 0.5),
                Text(
                  profileData!['email'] ?? 'Unknown',
                  style: kCaptionTextStyle,
                ),
              ],
            ),
          )
        : const CircularProgressIndicator();

    var header = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        profileInfo,
      ],
    );

    Widget buildProfileDetailCard(IconData icon, String text) {
      return Container(
        margin: EdgeInsets.symmetric(vertical: kSpacingUnit.w),
        padding: EdgeInsets.symmetric(
            vertical: kSpacingUnit.w, horizontal: kSpacingUnit.w * 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kSpacingUnit.w * 1.5),
          color: Theme.of(context).backgroundColor,
        ),
        child: Row(
          children: <Widget>[
            Icon(icon, color: Colors.black), // Set icon color to black
            SizedBox(width: kSpacingUnit.w * 1.5),
            Expanded(
              child: Text(
                text,
                style: kCaptionTextStyle.copyWith(
                  fontSize: ScreenUtil().setSp(15),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: kSpacingUnit.w * 5),
            header,
            if (profileData != null)
              Padding(
                padding: EdgeInsets.all(kSpacingUnit.w * 2),
                child: Column(
                  children: [
                    buildProfileDetailCard(LineAwesomeIcons.user, 'Username: ${profileData!['username']}'),
                    buildProfileDetailCard(LineAwesomeIcons.briefcase_solid, 'Role: ${profileData!['role']}'),
                    buildProfileDetailCard(LineAwesomeIcons.birthday_cake_solid, 'Birth Day: ${profileData!['date_of_birth']}'),
                    buildProfileDetailCard(LineAwesomeIcons.info_circle_solid, 'Bio: ${profileData!['bio']}'),
                  ],
                ),
              ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kSpacingUnit.w * 2),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditProfileScreen(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(LineAwesomeIcons.user_edit_solid),
                          SizedBox(width: 8),
                          Text('Edit'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: kSpacingUnit.w * 2),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _logout, // Reference to the function
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(LineAwesomeIcons.sign_out_alt_solid),
                          SizedBox(width: 8),
                          Text('Logout'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
