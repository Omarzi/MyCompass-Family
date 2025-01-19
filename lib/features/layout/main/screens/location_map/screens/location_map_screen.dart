import 'package:riedberg_admin_app/features/layout/main/screens/location_map/widgets/container_location_map.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/location_map/widgets/custom_service_item.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/location_map/widgets/location_map_body.dart';

import '../../../../../../core/utils/exports.dart';

class LocationMapScreen extends StatelessWidget {
  const LocationMapScreen({super.key});
  static const routeName = '/location_map';

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
        title: 'Location Map',
      ),
      body: const LocationMapBody()
    );
  }
}


