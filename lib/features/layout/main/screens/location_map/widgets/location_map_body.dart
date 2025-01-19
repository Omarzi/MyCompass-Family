import 'package:riedberg_admin_app/features/layout/main/screens/location_map/widgets/container_location_map.dart';
import '../../../../../../core/utils/exports.dart';

class LocationMapBody extends StatelessWidget {
  const LocationMapBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      padding: EdgeInsets.only(
        left: AppConstants.paddingHorizontalInScreens,
        right: AppConstants.paddingHorizontalInScreens,
        top: AppConstants.paddingVerticalInScreens / 2,
      ),
      children: [
        ...AppConstants.locationSection.map((locationSection) => ContainerLocationMap(
          title:  locationSection.title,
          icon:  locationSection.icon,
          children: locationSection.children,
        )),
      ],
    );
  }
}
