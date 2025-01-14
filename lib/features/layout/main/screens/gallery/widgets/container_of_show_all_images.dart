import '../../../../../../core/utils/exports.dart';

class ContainerOfShowAllImages extends StatelessWidget {
  const ContainerOfShowAllImages({super.key, required this.galleryImage});
  final String galleryImage;
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
        child:Image.asset(galleryImage,height: 200,fit: BoxFit.cover,width: double.infinity,),

    );
  }
}
