import 'package:flutter/cupertino.dart';
import 'package:riedberg_admin_app/features/layout/profile/screens/notification_screen.dart';
import 'package:riedberg_admin_app/features/layout/profile/screens/privacy_policty_screen.dart';
import '../../../../core/utils/exports.dart';

class ProfileContainers extends StatelessWidget {
  const ProfileContainers({super.key});

  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: Text(
          'Choose Language',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor500,
          ),
        ),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            isDefaultAction: true,
            onPressed: () {
              // Handle Arabic selection
              Navigator.pop(context);
            },
            child: Text(
              'Arabic',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.blackColor,
              ),
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              // Handle English selection
              Navigator.pop(context);
            },
            child: Text(
              'English',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.blackColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 40.h),
      child: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return index == 0
              ? Padding(
                  padding: EdgeInsets.only(top: 40.h, bottom: 20.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(
                          color: AppColors.greyScaleColor400, thickness: 1.h),
                      SizedBox(height: 15.h),
                      Text("Settings",
                          style: AppTextStyles.heading3(context,
                              textColor: AppColors.blackColor)),
                    ],
                  ),
                )
              : SizedBox(height: 20.h);
        },
        itemCount: AppConstants.listOfTitles.length,
        itemBuilder: (context, index) => CustomContainerInProfile(
          title: AppConstants.listOfTitles[index],
          leadingIcon: AppConstants.listOfIcons[index],
          onTap: () {
            index == 0
                ? Navigator.pushNamed(context, FamilyDataScreen.routeName)
                : index == 1
                    ? _showActionSheet(context)
                    : index == 2 ? Navigator.pushNamed(context, NotificationScreen.routeName)
                    : index == 3 ? Navigator.pushNamed(context, PrivacyPolicyScreen.routeName)
                    : const SizedBox();
          },
        ),
      ),
    );
  }
}
