import 'package:riedberg_admin_app/features/layout/main/screens/contact_staff/widgets/custom_container.dart';
import '../../../../../../core/utils/exports.dart';

class AnnouncementCard extends StatelessWidget {
  const AnnouncementCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.greyScaleColor300,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Important Building Maintenance",
                  style: AppTextStyles.bodyXLarge(context,
                          textColor: AppColors.blackColor,
                          fontWeight: AppConstants.bold)
                      .copyWith(fontSize: 16.sp)),
              // CustomContainer(text: "High Priority",backgroundColor: AppColors.primaryColor,textColor: AppColors.whiteColor,borderRadius: 10.r),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                decoration: BoxDecoration(
                  color: AppColors.errorColor.withOpacity(.6),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: Text(
                    "High Priority",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Text("Scheduled maintenance work on the heating system next Monday.",
              style: AppTextStyles.bodyLarge(context,
                  textColor: AppColors.blackColor,
                  fontWeight: AppConstants.medium)),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Facility Management",
                  style: AppTextStyles.bodyLarge(context,
                      textColor: AppColors.blackColor,
                      fontWeight: AppConstants.regular)),
              // SizedBox(width: 8.w,),
              // Text(".",style: AppTextStyles.bodyXLarge(context,textColor: AppColors.blackColor,fontWeight: AppConstants.bold)),
              // SizedBox(width: 8.w,),
              Text(
                "1/14/2025",
                style: AppTextStyles.bodyLarge(
                  context,
                  textColor: AppColors.blackColor,
                  fontWeight: AppConstants.regular,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}