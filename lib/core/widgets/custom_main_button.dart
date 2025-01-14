
import 'package:riedberg_admin_app/core/utils/exports.dart';

class CustomMainButton extends StatelessWidget {
  const CustomMainButton({
    super.key,
    required this.onTap,
    this.padding,
    this.decoration,
    required this.widgetInButton,
    this.haveBoxShadow = false,
  });

  final void Function()? onTap;
  final EdgeInsets? padding;
  final BoxDecoration? decoration;
  final Widget widgetInButton;
  final bool? haveBoxShadow;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: padding,
        decoration: decoration ??
            BoxDecoration(
              // color: AppColors.primaryColor500,
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.circular(100.r),
              boxShadow: haveBoxShadow == true
                  ? [
                      BoxShadow(
                        color: AppColors.primaryColor500.withOpacity(0.25),
                        offset: const Offset(4, 8),
                        blurRadius: 24,
                        spreadRadius: 0,
                      ),
                    ]
                  : null,
            ),
        child: widgetInButton,
      ),
    );
  }
}
