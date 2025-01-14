import 'package:riedberg_admin_app/core/styles/app_text_styles.dart';
import 'package:riedberg_admin_app/core/utils/exports.dart';

AppBar buildAppBar({
  required bool isRTL,
  required bool isDarkMode,
  required BuildContext context,
  Function()? onPressedBack,
  bool? haveLeadingButton = false,
  bool? haveTitle,
  bool? isCenterTitle = false,
  String? title,
  List<Widget>? actions,
}) {
  return AppBar(
    backgroundColor: AppColors.transparentColor,
    scrolledUnderElevation: 0,
    elevation: 0,
    centerTitle: isCenterTitle,
    leading: haveLeadingButton == false
        ? const SizedBox()
        : IconButton(
            icon: RotatedBox(
              quarterTurns: isRTL ? 2 : 4,
              child: SvgPicture.asset(
                'assets/images/svgs/arrow_left.svg',
                colorFilter: const ColorFilter.mode(
                  AppColors.blackColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
            onPressed: onPressedBack,
          ),
    title: haveTitle == true
        ? Text(
            title!,
            style: AppTextStyles.bodyXLarge(
              context,
              textColor: AppColors.blackColor,
              fontWeight: FontWeight.bold,
            ).copyWith(
              fontSize: 22.sp,
            ),
          )
        : null,
    actions: actions,
  );
}
