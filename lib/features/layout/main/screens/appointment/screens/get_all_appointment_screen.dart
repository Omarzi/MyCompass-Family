import 'package:riedberg_admin_app/core/utils/exports.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/appointment/screens/add_new_appointment_screen.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/appointment/widgets/get_all_appointments_body.dart';

class GetAllAppointmentScreen extends StatelessWidget {
  const GetAllAppointmentScreen({super.key});

  static const routeName = '/get_all_appointment';

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
        onPressedBack: () => context.pop(),
        haveLeadingButton: true,
        haveTitle: true,
        isCenterTitle: true,
        title: 'Appointments',
        actions: [
          IconButton(
            onPressed: () {
              context.pushNamed(AddNewAppointmentScreen.routeName);
            },
            icon: const Icon(Iconsax.add_circle, color: AppColors.primaryColor),
          ),
        ],
      ),
      body: const GetAllAppointmentsBody(),
    );
  }
}