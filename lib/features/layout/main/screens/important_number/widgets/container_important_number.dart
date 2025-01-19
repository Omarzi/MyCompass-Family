import '../../../../../../core/utils/exports.dart';

class ContainerImportantNumber extends StatelessWidget {
  const ContainerImportantNumber(
      {super.key,
      required this.iconData,
      required this.color,
      required this.title,
      required this.subTitle,
      required this.availability,
      required this.number});

  final IconData iconData;
  final Color color;
  final String title, subTitle, availability, number;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: AppColors.whiteColor,
      margin: EdgeInsets.symmetric(vertical: 10.0.h),
      child: Padding(
        padding: EdgeInsets.all(18.0.sp),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(iconData, color: color, size: 34.sp,),
            SizedBox(width: 18.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.bodyXLarge(context,
                        textColor: AppColors.blackColor,
                        fontWeight: AppConstants.bold),
                  ),
                  SizedBox(height: 6.0.h),
                  Text(
                    subTitle,
                    style: AppTextStyles.bodyLarge(context,
                        textColor: AppColors.greyScaleColor700,
                        fontWeight: AppConstants.medium),
                  ),
                  SizedBox(height: 6.0.h),
                  Text(
                    availability,
                    style: AppTextStyles.bodyMedium(context,
                        textColor: AppColors.greyScaleColor500,
                        fontWeight: AppConstants.light),
                  ),
                ],
              ),
            ),
            Text(
              number,
              style: AppTextStyles.bodyXLarge(context,
                  textColor: color, fontWeight: AppConstants.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class EmergencyContact {
  final String title;
  final String subtitle;
  final String availability;
  final String number;
  final IconData icon;
  final Color iconColor;
  final Color numberColor;

  EmergencyContact({
    required this.title,
    required this.subtitle,
    required this.availability,
    required this.number,
    required this.icon,
    required this.iconColor,
    required this.numberColor,
  });
}
