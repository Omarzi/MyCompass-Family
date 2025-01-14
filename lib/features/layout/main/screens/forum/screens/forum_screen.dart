import 'package:riedberg_admin_app/features/layout/main/screens/forum/screens/add_new_forum_screen.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/forum/widgets/forum_body.dart';
import '../../../../../../core/utils/exports.dart';

class ForumScreen extends StatelessWidget {
  const ForumScreen({super.key});
   static const routeName = '/forum';
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
    body: const ForumBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        onPressed: () {
          Navigator.pushNamed(context, AddNewForumScreen.routeName);
        },// Icon inside the FAB
        tooltip: 'Add',
        child: const Icon(Icons.add,color: AppColors.whiteColor,)// Tooltip when long-pressed
      ),

    );
  }
}
