import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:shiro/src/page/profile/constants/constant.dart';

class ProfileListItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool hasNavigation;

  const ProfileListItem({
    Key? key,
    required this.icon,
    required this.text,
    this.hasNavigation = true, required Null Function() onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          if (hasNavigation)
            Icon(
              LineAwesomeIcons.angle_right_solid,
              size: kSpacingUnit.w * 2.5,
            ),
        ],
      ),
    );
  }
}
