import 'package:riedberg_admin_app/core/styles/app_text_styles.dart';
import '../../../../core/utils/exports.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Login to your Account',
      style: AppTextStyles.heading1(context, textColor: AppColors.blackColor),
    );
  }
}
