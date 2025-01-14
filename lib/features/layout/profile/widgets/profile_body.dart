import '../../../../core/utils/exports.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          left: AppConstants.paddingHorizontalInScreens,
          right: AppConstants.paddingHorizontalInScreens,
          top: AppConstants.paddingVerticalInScreens,
          // vertical: AppConstants.paddingVerticalInScreens,
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileHeader(),
            ProfileContainers(),
          ],
        ),
      ),
    );
  }
}
