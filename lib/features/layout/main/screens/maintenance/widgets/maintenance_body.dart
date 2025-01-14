import 'package:riedberg_admin_app/core/utils/exports.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/maintenance/widgets/container_maintenance.dart';

class MaintenanceBody extends StatelessWidget {
  const MaintenanceBody({super.key});

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
            return const CustomContainerMaintenance();
          },
        )
      ),
    );
  }
}
