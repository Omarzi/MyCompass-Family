import '../../../../../../core/utils/exports.dart';

class ContainerImportantInformation extends StatelessWidget {
  const ContainerImportantInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: AppColors.greyScaleColor100,
      margin: EdgeInsets.symmetric(vertical: 10.0.h),
      child: Padding(
        padding: EdgeInsets.all(18.0.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Important Information",style: AppTextStyles.bodyXLarge(context,textColor: AppColors.blackColor,fontWeight: AppConstants.bold)),
            SizedBox(height: 10.h,),
            Text("In case of emergency, call the appropriate number immediately.",style: AppTextStyles.bodyLarge(context, textColor: AppColors.greyScaleColor700),),
            SizedBox(height: 5.h,),
            Text("Tap on any number to call directly."),
            SizedBox(height: 5.h,),
            Text("Youth Protection Hotline is available Monday to Friday 8:00 - 23:00 and Saturday to Sunday 10:00 - 23:00."),
          ],
        ),
      )
    );

  }
}
