import 'package:riedberg_admin_app/features/layout/profile/widgets/family_data_body.dart';

import '../../../../core/utils/exports.dart';

class FamilyDataScreen extends StatelessWidget {
  const FamilyDataScreen({super.key});
  static const routeName = '/family-data-screen';

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
        isCenterTitle: false,
        onPressedBack: (){
          Navigator.pop(context);
        },
        haveLeadingButton: true,
        haveTitle: true,
        title: 'Family Data',
      ),
      body: const FamilyDataBody(),
    );
  }
}
