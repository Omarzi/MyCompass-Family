import '../../../../core/utils/exports.dart';

class CustomContainerFamilyField extends StatelessWidget {
  const CustomContainerFamilyField({
    super.key,  required this.title, required this.data,
  });
  final String title,data;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Text(title,style:  AppTextStyles.bodyXLarge(context,textColor: AppColors.blackColor,fontWeight: AppConstants.medium)),
        ),
        SizedBox(height: 8.h),
        Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: AppColors.greyScaleColor50,
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: AppColors.primaryColor500)

            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 20.h),
              child: Text(data,style: AppTextStyles.heading4(context,textColor: AppColors.blackColor,).copyWith(fontSize: 20.sp)),
            ))
      ],
    );
  }
}
