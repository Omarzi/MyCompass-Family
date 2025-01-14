import 'package:riedberg_admin_app/features/layout/main/screens/announcement/widgets/announcement_card.dart';

import '../../../../../../core/utils/exports.dart';

class AnnouncementBody extends StatelessWidget {
  const AnnouncementBody({super.key});

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
          children: [
            AnnouncementCard(),
          ],
        ),
      ),
    );
  }
}
