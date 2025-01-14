import 'package:riedberg_admin_app/core/styles/app_text_styles.dart';
import '../../../../core/utils/exports.dart';

class CustomContainerInProfile extends StatelessWidget {
  const CustomContainerInProfile({super.key, required this.title, required this.leadingIcon, required this.onTap});

  final String title;
  final IconData leadingIcon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: double.infinity,
          height: 70.h,
          decoration: BoxDecoration(
            color: AppColors.greyScaleColor100,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            leading: Icon(
              leadingIcon,
              color: title == "Logout" ?AppColors.redColor : AppColors.blackColor,
            ),
            title: Text(
              title,
              style: AppTextStyles.bodyLarge(context,
                  textColor: AppColors.blackColor,
                  fontWeight: AppConstants.medium),
            ),
            trailing: const Icon(
              Iconsax.arrow_right,
              color: AppColors.blackColor,
            ),
          )),
    );
  }
}
