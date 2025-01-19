import '../../../../../../core/utils/exports.dart';

class CustomAnnouncementCard extends StatelessWidget {
  const CustomAnnouncementCard({
    super.key,
    required this.announcementTitle,
    required this.priority,
    required this.announcementDescription,
    required this.type,
    required this.announcementDate,
    this.announcementImage,
    this.haveAnImage = false,
  });

  final String announcementTitle,
      priority,
      announcementDescription,
      type,
      announcementDate;
  final String? announcementImage;

  final bool? haveAnImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: const [
            BoxShadow(
              color: AppColors.greyScaleColor300,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(announcementTitle,
                  style: AppTextStyles.bodyXLarge(context,
                          textColor: AppColors.blackColor,
                          fontWeight: AppConstants.bold)
                      .copyWith(fontSize: 16.sp)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                decoration: BoxDecoration(
                  color: priority == "High Priority"
                      ? AppColors.errorColor.withOpacity(.6)
                      : priority == "Low Priority"
                          ? AppColors.greenColor.withOpacity(.6)
                          : AppColors.orangeColor.withOpacity(.6),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: Text(
                    priority,
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
          Text(announcementDescription,
              style: AppTextStyles.bodyLarge(context,
                  textColor: AppColors.blackColor,
                  fontWeight: AppConstants.medium)),
          SizedBox(height: 12.h),

          if (haveAnImage == true)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppConstants.borderRadius),
                border: Border.all(
                  color: AppColors.greyScaleColor300,
                  width: 1.w,
                ),
              ),
              // color: AppColors.greyScaleColor300,
              child: Image.asset(
                announcementImage!,
                fit: BoxFit.cover,
              ),
            ),
          if (haveAnImage == true)
            SizedBox(height: 12.h),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(type,
                  style: AppTextStyles.bodyLarge(context,
                      textColor: AppColors.blackColor,
                      fontWeight: AppConstants.regular)),
              Text(
                announcementDate,
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
