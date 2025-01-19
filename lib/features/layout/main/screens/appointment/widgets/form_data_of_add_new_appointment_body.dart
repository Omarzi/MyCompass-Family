import 'package:riedberg_admin_app/features/layout/main/screens/appointment/widgets/form_add_new_appointment.dart';

import '../../../../../../core/utils/exports.dart';

class FormDataOfAddNewAppointmentBody extends StatelessWidget {
  const FormDataOfAddNewAppointmentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          left: AppConstants.paddingHorizontalInScreens,
          right: AppConstants.paddingHorizontalInScreens,
          top: AppConstants.paddingVerticalInScreens,
          bottom: AppConstants.paddingVerticalInScreens / 2,
          // vertical: AppConstants.paddingVerticalInScreens,
        ),
        child: const Column(
          children: [
             FormAddNewAppointment()
          ],
        ),
      ),
    );
  }
}
