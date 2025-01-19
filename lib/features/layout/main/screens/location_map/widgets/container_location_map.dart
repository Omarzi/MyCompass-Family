import '../../../../../../core/utils/exports.dart';

class ContainerLocationMap extends StatelessWidget {
  final IconData icon;
  final String title;
  final List<Widget> children;
  const ContainerLocationMap({super.key, required this.icon, required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: AppConstants.paddingVerticalInScreens / 2),
      child: Card(
        color: AppColors.whiteColor,
        shadowColor: AppColors.greyScaleColor50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.r),
        ),
        elevation: 4,
        child: ExpansionTile(
          leading: Icon(icon, color: AppColors.primaryColor),
          title: Text(
            title,
            style: AppTextStyles.bodyXLarge(context, textColor: AppColors.blackColor,fontWeight: FontWeight.bold),
          ),
          children: children,
        ),
      ),
    );
  }
}