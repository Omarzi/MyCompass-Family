import '../../../../core/utils/exports.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
        isCenterTitle: true,
        onPressedBack: null,
        haveLeadingButton: false,
        haveTitle: true,
        title: 'Profile',
      ),
      body: const ProfileBody(),
    );
  }
}
