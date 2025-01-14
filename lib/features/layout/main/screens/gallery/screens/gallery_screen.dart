import 'package:riedberg_admin_app/features/layout/main/screens/gallery/widgets/gallery_body.dart';

import '../../../../../../core/utils/exports.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});
  static const routeName = '/gallery';

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
        onPressedBack: (){Navigator.pop(context);},
        haveLeadingButton: true,
        haveTitle: true,
        isCenterTitle: false,
        title: 'Gallery',
      ),
      body: const GalleryBody(),
    );
  }
}
