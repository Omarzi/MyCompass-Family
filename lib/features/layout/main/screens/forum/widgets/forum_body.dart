import 'package:riedberg_admin_app/features/layout/main/screens/forum/widgets/container_forum.dart';

import '../../../../../../core/utils/exports.dart';

class ForumBody extends StatelessWidget {
  const ForumBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          left: AppConstants.paddingHorizontalInScreens,
          right: AppConstants.paddingHorizontalInScreens,
          top: AppConstants.paddingVerticalInScreens / 2,
          // vertical: AppConstants.paddingVerticalInScreens,
        ),
        child: const Column(
          children: [
            ContainerForum(
              name: 'John Doe',
              date: '2 hours ago',
              postTitle: 'Looking for a bicycle',
              postDescription: 'Does anyone have a spare bicycle they could lend for a few days?',
              postImage: 'assets/images/pngs/welcome_image.png',
            ),
          ],
        ),
      ),
    );
  }
}
