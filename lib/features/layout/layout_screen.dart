import 'package:riedberg_admin_app/core/styles/app_text_styles.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/main_screen.dart';
import 'package:riedberg_admin_app/features/layout/profile/screens/profile_screen.dart';
import '../../core/utils/exports.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  static const routeName = '/layout';

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const MainScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: AppColors.primaryColor500,
          backgroundColor: AppColors.whiteColor,
          labelTextStyle: WidgetStateProperty.all(
            AppTextStyles.bodyMedium(
              context,
              textColor: AppColors.primaryColor500,
            ),
          ),
        ),
        child: NavigationBar(
          height: 60.0, // Replace 100.h if not using flutter_screenutil
          selectedIndex: currentIndex,
          onDestinationSelected: (index) => setState(() => this.currentIndex = index),
          destinations: [
            NavigationDestination(
              icon: Icon(
                Iconsax.home_1,
                color: currentIndex == 0 ? AppColors.greyScaleColor200 : AppColors.primaryColor500,
              ),
              label: "Main",
            ),
            NavigationDestination(
              icon: Icon(
                Iconsax.personalcard,
                color: currentIndex == 1 ? AppColors.greyScaleColor200 : AppColors.primaryColor500,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
