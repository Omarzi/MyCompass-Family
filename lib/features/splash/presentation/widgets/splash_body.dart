import '../../../../core/utils/exports.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  // void initState() {
  //   /// Navigate to another screen after 3 seconds
  //   goToWelcomeScreen();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppConstants.getScreenWidth(context),
      height: AppConstants.getScreenHeight(context),
      decoration: BoxDecoration(
        gradient: AppColors.gradientGreenColor,
        // color: isDarkMode ? AppColors.dark1Color : null,
      ),
      child: Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: SvgPicture.asset("assets/images/svgs/logo.svg"),
            ),
            CustomLoadingInSplash(
              height: AppConstants.getScreenHeight(context),
              width: AppConstants.getScreenWidth(context),
              color: AppColors.whiteColor,
            ),
          ],
        ),
      ),
    );
  }

  Future goToWelcomeScreen() {
    return Future.delayed(const Duration(seconds: 3), () {
      context.pushNamedAndRemoveUntil(
        LoginScreen.routeName,
        predicate: (route) => false,
      );
    });
  }
}