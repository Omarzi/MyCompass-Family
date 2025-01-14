import 'package:riedberg_admin_app/core/utils/exports.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/maintenance/widgets/Add_maintenance_form.dart';

class AddMaintenanceBody extends StatelessWidget {
  const AddMaintenanceBody({super.key});

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
          child: Column(
            children: [
              AddMaintenanceForm()
            ],
          )
      ),
    );
  }
}
