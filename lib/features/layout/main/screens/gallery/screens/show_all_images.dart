import 'package:riedberg_admin_app/features/layout/main/screens/gallery/widgets/show_all_images_body.dart';

import '../../../../../../core/utils/exports.dart';

class ShowAllImagesScreen extends StatelessWidget {
  const ShowAllImagesScreen({super.key, required this.galleryTitle});
final String galleryTitle;
  static const routeName = '/show-all-images';

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
        title: galleryTitle,
      ),
      body: const ShowAllImagesBody(),
    );
  }
}
