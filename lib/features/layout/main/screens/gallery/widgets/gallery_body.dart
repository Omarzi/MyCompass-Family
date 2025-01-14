import 'package:riedberg_admin_app/features/layout/main/screens/gallery/widgets/container_gallery.dart';

import '../../../../../../core/utils/exports.dart';

class GalleryBody extends StatelessWidget {
  const GalleryBody({super.key});

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
          child:  ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) => SizedBox(height: 20.h),
            itemCount: 2,
            itemBuilder: (context, index) {
              return const ContainerGallery(galleryTitle: 'Family Photo', galleryDes: 'Family Family Family Family Family', galleryDate: '1/1/2025', galleryImage: "assets/images/pngs/welcome_image.png",);
            },
          )
      ),
    );
  }
}
