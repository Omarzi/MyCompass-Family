import 'package:riedberg_admin_app/features/layout/main/screens/appointment/widgets/add_new_appointment_body.dart';

import '../../../../../../core/utils/exports.dart';

class AddNewAppointmentScreen extends StatefulWidget {
  const AddNewAppointmentScreen({super.key});
  static const routeName = '/add_new_appointment';

  @override
  State<AddNewAppointmentScreen> createState() => _AddNewAppointmentScreenState();
}

class _AddNewAppointmentScreenState extends State<AddNewAppointmentScreen> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = CacheHelper.getIsDarkMode();
    bool isRTL = Directionality.of(context) == TextDirection.rtl;

    return  Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: buildAppBar(
        isRTL: isRTL,
        isDarkMode: isDarkMode,
        context: context,
        onPressedBack: () => context.pop(),
        haveLeadingButton: true,
        haveTitle: true,
        isCenterTitle: false,
        title: 'Add new appointment',
      ),
      body: Padding(
        padding: EdgeInsets.all(18.0.sp),
        child: const AddNewAppointmentBody()
      ),
    );
  }
}
