import 'package:riedberg_admin_app/features/layout/main/screens/gallery/screens/show_all_images.dart';

import '../../../../../../core/utils/exports.dart';
import '../../maintenance/screen/maintenance_screen.dart';

class ContainerGallery extends StatelessWidget {
  const ContainerGallery({super.key, required this.galleryTitle, required this.galleryDes, required this.galleryDate, required this.galleryImage});
final String galleryTitle , galleryDes , galleryDate , galleryImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: AppColors.primaryColor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(galleryTitle,style: AppTextStyles.bodyXLarge(context,textColor: AppColors.blackColor,fontWeight: AppConstants.bold),),
        SizedBox(height: 5.h),
        Text(galleryDes,style: AppTextStyles.bodyXLarge(context,textColor: AppColors.blackColor,fontWeight: AppConstants.regular),),
          SizedBox(height: 5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(galleryDate,style: AppTextStyles.bodyXLarge(context,textColor: AppColors.blackColor,fontWeight: AppConstants.regular),),
            InkWell(
              onTap: () =>Navigator.pushNamed(context, ShowAllImagesScreen.routeName,arguments: galleryTitle),
                child: Text("Show all",style: AppTextStyles.bodyXLarge(context,textColor: AppColors.primaryColor,fontWeight: AppConstants.semiBold),)),
          ],
        ),
        SizedBox(height: 15.h),
        Image.asset(galleryImage,height: 200,fit: BoxFit.cover,width: double.infinity,),
      ])
    );
  }
}
