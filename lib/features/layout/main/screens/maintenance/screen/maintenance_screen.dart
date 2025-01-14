import 'package:riedberg_admin_app/core/utils/exports.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/maintenance/screen/add_maintenance_screen.dart';
import '../widgets/maintenance_body.dart';

class MaintenanceScreen extends StatelessWidget {
  const MaintenanceScreen({super.key});
  static const routeName = '/maintenance';

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
        title: 'Maintenance',
      ),
      body: const MaintenanceBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        onPressed: () {
          Navigator.pushNamed(context, AddMaintenanceScreen.routeName);
        },// Icon inside the FAB
        tooltip: 'Add',
        child: const Icon(Icons.add,color: AppColors.whiteColor,), // Tooltip when long-pressed
      ),

    );
  }
}
