import '../../../../core/utils/exports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const routeName = '/login';

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
        onPressedBack: null,
        haveLeadingButton: false,
        haveTitle: false,
      ),
      body: const LoginBody(),
    );
  }
}
