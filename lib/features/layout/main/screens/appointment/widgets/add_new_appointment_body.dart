import 'package:riedberg_admin_app/features/layout/main/screens/appointment/screens/form_data_of_add_new_appointment_screen.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/appointment/widgets/custom_card_of_add_new_appointment.dart';

import '../../../../../../core/utils/exports.dart';

class AddNewAppointmentBody extends StatefulWidget {
  const AddNewAppointmentBody({super.key});

  @override
  State<AddNewAppointmentBody> createState() => _AddNewAppointmentBodyState();
}

class _AddNewAppointmentBodyState extends State<AddNewAppointmentBody> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(height: 16.0.h),
      itemCount: AppConstants.appointmentData.length,
      itemBuilder: (context, index) {
        final staff = AppConstants.appointmentData[index];
        final isSelected = selectedIndex == index;

        return CustomCardOfAddNewAppointment(
          appointmentData: staff,
          isSelected: isSelected,
          onTap: () {
            setState(() {
              selectedIndex = index;
              context.pushNamed(FormDataOfAddNewAppointmentScreen.routeName);
            });
          },
        );
      },
    );
  }
}
