import 'package:riedberg_admin_app/features/layout/profile/widgets/custom_data_in_privacy_policy.dart';
import 'package:riedberg_admin_app/features/layout/profile/widgets/privacy_policy_body.dart';

import '../../../../core/utils/exports.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});
  static const routeName = '/privacy_policy';

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = CacheHelper.getIsDarkMode();
    bool isRTL = Directionality.of(context) == TextDirection.rtl;

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: buildAppBar(
        isRTL: isRTL,
        isDarkMode: isDarkMode,
        context: context,
        onPressedBack: (){
          Navigator.pop(context);
        },
        haveLeadingButton: true,
        haveTitle: true,
        isCenterTitle: false,
        title: 'Privacy Policy',
      ),
      body: const PrivacyPolicyBody(),
    );
  }
}
