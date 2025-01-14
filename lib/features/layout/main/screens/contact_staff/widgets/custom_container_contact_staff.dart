import 'package:riedberg_admin_app/core/utils/exports.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/contact_staff/widgets/custom_container.dart';

class CustomContainerContactStaff extends StatelessWidget {
  const CustomContainerContactStaff({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(16.0.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.blackColor.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Amira Adel",
                  style: AppTextStyles.bodyXLarge(context,
                      textColor: AppColors.blackColor, fontWeight: AppConstants.bold),
                ),
                SizedBox(height: 5.h),
                Text("Flutter Developer",
                    style: AppTextStyles.bodyLarge(context,
                        textColor: AppColors.greyScaleColor500,
                        fontWeight: AppConstants.medium)),
                SizedBox(height: 5.h),
                Text("Working days",
                    style: AppTextStyles.bodyXLarge(context,
                        textColor: AppColors.blackColor,
                        fontWeight: AppConstants.bold)),
                SizedBox(height: 5.h),
              ],
            ),
          ),
          Container(
            height: 55.h,
            padding: EdgeInsets.only(left: 20.w),
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(width: 5.w),
              scrollDirection: Axis.horizontal, // Enable horizontal scrolling
              itemCount: AppConstants.days.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  child: CustomContainer(
                    text: AppConstants.days[index],
                    backgroundColor: AppColors.primaryColor,
                    textColor: Colors.white,
                    borderRadius: 12.0.r,
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 5.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text("Language",
                style: AppTextStyles.bodyLarge(context,
                    textColor: AppColors.blackColor,
                    fontWeight: AppConstants.bold)),
          ),
          SizedBox(height: 5.h),
          Container(
            height: 55.h,
            padding: EdgeInsets.only(left: 20.w),
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(width: 5.w),
              scrollDirection: Axis.horizontal, // Enable horizontal scrolling
              itemCount: AppConstants.languages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  child: CustomContainer(
                    text: AppConstants.languages[index],
                    backgroundColor: AppColors.primaryColor,
                    textColor: Colors.white,
                    borderRadius: 12.0.r,
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 5.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text("Work specialization",
                style: AppTextStyles.bodyLarge(context,
                    textColor: AppColors.blackColor,
                    fontWeight: AppConstants.bold)),
          ),
          SizedBox(height: 5.h),
          Container(
            height: 55.h,
            padding: EdgeInsets.only(left: 20.w),
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(width: 5.w),
              scrollDirection: Axis.horizontal, // Enable horizontal scrolling
              itemCount: AppConstants.workSpecialization.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  child: CustomContainer(
                    text: AppConstants.workSpecialization[index],
                    backgroundColor: AppColors.primaryColor,
                    textColor: Colors.white,
                    borderRadius: 12.0.r,
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10.h),

          /// Chat In Whatsapp Button
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: CustomMainButton(
              onTap: () {},
              padding: EdgeInsets.symmetric(vertical: 12.h),
              widgetInButton: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Iconsax.message, color: AppColors.whiteColor),
                    SizedBox(width: 10.w),
                    Text(
                      'Chat In Whatsapp',
                      style: AppTextStyles.bodyLarge(context,
                          textColor: AppColors.whiteColor,
                          fontWeight: AppConstants.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
