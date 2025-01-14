import 'package:riedberg_admin_app/features/layout/main/screens/forum/widgets/add_new_forum_form.dart';

import '../../../../../../core/utils/exports.dart';

class AddNewForumBody extends StatelessWidget {
 const  AddNewForumBody({super.key});

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AddNewForumForm()
          ],
        ),
      ),
    );
  }
}
