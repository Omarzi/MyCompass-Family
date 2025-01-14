import 'package:riedberg_admin_app/features/layout/main/screens/announcement/widgets/announcement_body.dart';
import '../../../../../../core/utils/exports.dart';

class AnnouncementScreen extends StatelessWidget {
  const AnnouncementScreen({super.key});

  static const routeName = '/announcement';

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
        onPressedBack: () {
          Navigator.pop(context);
        },
        haveLeadingButton: true,
        haveTitle: true,
        isCenterTitle: false,
        title: 'Announcements',
      ),
      body: const AnnouncementBody(),
    );
  }
}
