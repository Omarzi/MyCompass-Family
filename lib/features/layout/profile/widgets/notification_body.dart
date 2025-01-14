import '../../../../core/utils/exports.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({super.key, required this.title, required this.content});
  final String title;
  final String content;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.symmetric(vertical: 14.h, horizontal: 18.0.w),
      padding:  EdgeInsets.all(18.0.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.0.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 6.0,
            offset: const Offset(0, 3),
          ),
        ],
        border: Border.all(color: Colors.grey.withOpacity(0.2)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon or Badge indicator
          Container(
           padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 15.w),
            decoration: BoxDecoration(
              color:AppColors.primaryColor500.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child:  Icon(
              Icons.notifications,
              color: AppColors.primaryColor500,
              size: 22.0.sp,
            ),
          ),
           SizedBox(width: 20.0.w),
          // Text content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  title,
                  style:  AppTextStyles.heading6(context, textColor: AppColors.blackColor)
                ),
                 SizedBox(height: 10.0.h),
                Text(
                  content,
                  style:  AppTextStyles.bodyXLarge(context, textColor: AppColors.greyScaleColor500)
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
