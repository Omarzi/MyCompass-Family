import 'package:riedberg_admin_app/core/styles/app_text_styles.dart';
import '../../../../core/utils/exports.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text("Account", style: AppTextStyles.heading3(context, textColor: AppColors.blackColor));
  }
}
