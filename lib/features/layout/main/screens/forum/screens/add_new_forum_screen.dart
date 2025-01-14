import 'package:riedberg_admin_app/features/layout/main/screens/forum/widgets/add_new_forum_body.dart';

import '../../../../../../core/utils/exports.dart';

class AddNewForumScreen extends StatelessWidget {
  const AddNewForumScreen({super.key});
  static const routeName = '/add_new_forum';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: buildAppBar(
        isRTL: false,
        isDarkMode: false,
        context: context,
        onPressedBack: (){Navigator.pop(context);},
        haveLeadingButton: true,
        haveTitle: true,
        isCenterTitle: false,
        title: 'Forum',
      ),
      body: const AddNewForumBody(),

    );
  }
}
