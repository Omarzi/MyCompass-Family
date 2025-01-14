
import '../../../../core/utils/exports.dart';

class CheckButton extends StatefulWidget {
  const CheckButton({super.key});

  @override
  CheckButtonState createState() => CheckButtonState();
}

class CheckButtonState extends State<CheckButton> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked; // Toggle state
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200), // Animation duration
            padding: EdgeInsets.symmetric(
              horizontal: 2.w,
              vertical: 4.h,
            ),
            decoration: BoxDecoration(
              color: isChecked ? AppColors.primaryColor500 : Colors.transparent,
              border: Border.all(
                color: AppColors.primaryColor500,
                width: 3.w,
              ),
              borderRadius: BorderRadius.circular(8.r),
              boxShadow: isChecked
                  ? [
                BoxShadow(
                  color: AppColors.primaryColor500.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 8,
                  offset: const Offset(0, 1), // Shadow position
                ),
              ]
                  : [], // No shadow when not clicked
            ),
            child: Center(
              child: SvgPicture.asset(
                'assets/images/svgs/check_icon.svg',
                colorFilter: ColorFilter.mode(
                  isChecked
                      ? AppColors.whiteColor
                      : AppColors.transparentColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          SizedBox(width: 12.w),
          Text(
            'Remember me',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: AppConstants.semiBold,
            ),
          ),
        ],
      ),
    );
  }
}