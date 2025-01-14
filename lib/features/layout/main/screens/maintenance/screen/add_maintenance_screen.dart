import 'package:riedberg_admin_app/core/utils/exports.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/maintenance/widgets/add_maintenance_body.dart';

class AddMaintenanceScreen extends StatelessWidget {
  const AddMaintenanceScreen({super.key});
  static const routeName = '/add_maintenance';

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
        title: 'Add New Maintenance',
      ),
      body: const AddMaintenanceBody(),
    );
  }
}
