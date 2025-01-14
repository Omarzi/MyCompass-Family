import 'package:riedberg_admin_app/features/layout/main/screens/gallery/widgets/container_gallery.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/gallery/widgets/container_of_show_all_images.dart';

import '../../../../../../core/utils/exports.dart';

class ShowAllImagesBody extends StatelessWidget {
  const ShowAllImagesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
          left: AppConstants.paddingHorizontalInScreens,
          right: AppConstants.paddingHorizontalInScreens,
          top: AppConstants.paddingVerticalInScreens / 2,
          // vertical: AppConstants.paddingVerticalInScreens,
        ),
        child:  ListView.separated(
          separatorBuilder: (context, index) => SizedBox(height: 20.h),
          itemCount: 5,
          itemBuilder: (context, index) {
            return const ContainerOfShowAllImages( galleryImage: "assets/images/pngs/welcome_image.png",);
          },
        )
    );
  }
}
