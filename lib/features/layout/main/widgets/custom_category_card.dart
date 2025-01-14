import '../../../../core/utils/exports.dart';

class customCategoryCard extends StatelessWidget {
  const customCategoryCard({
    super.key,
    required this.item, required this.onTapCard,
  });

  final Map<String, dynamic> item;
 final void Function() onTapCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTapCard ,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0.r),
            side: BorderSide(
              color: AppColors.primaryColor500,
              width: 2.0.w,
            )),
        elevation: 4.0,
        color: AppColors.whiteColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              item['icon'],
              size: 50.0.sp,
              color: item['color'],
            ),
            SizedBox(height: 10.0.h),
            Text(
              item['label'],
              // TextStyle(
              //   fontSize: 18.0.sp,
              //   fontWeight: FontWeight.bold,
              // ),
              style: AppTextStyles.bodyLarge(context, textColor: AppColors.blackColor,fontWeight: AppConstants.bold).copyWith(fontSize: 18.sp),
            ),
          ],
        ),
      ),
    );
  }
}
