import 'package:riedberg_admin_app/core/utils/exports.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/contact_staff/widgets/custom_container.dart';

class CustomContainerMaintenance extends StatelessWidget {
  const CustomContainerMaintenance({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: AppColors.primaryColor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Plumbing",style: AppTextStyles.bodyXLarge(context,textColor: AppColors.blackColor,fontWeight: AppConstants.bold),),
          SizedBox(height: 5.h),
          Text("Bathroom",style: AppTextStyles.bodyLarge(context,textColor: AppColors.greyScaleColor500,fontWeight: AppConstants.medium)),
          SizedBox(
            height: 55.h,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(width: 5.w),
              scrollDirection: Axis.horizontal, // Enable horizontal scrolling
              itemCount: 02,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  child:  CustomContainer(text: AppConstants.list[index],backgroundColor: AppColors.primaryColor,textColor: AppColors.whiteColor,borderRadius: 10.r),
                );
              },
            ),
          ),
          ],)

    );
  }
}

