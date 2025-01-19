import 'package:riedberg_admin_app/features/layout/main/screens/appointment/widgets/form_data_of_add_new_appointment_body.dart';
import '../../../../../../core/utils/exports.dart';

class FormDataOfAddNewAppointmentScreen extends StatelessWidget {
  const FormDataOfAddNewAppointmentScreen({super.key});
static const routeName = '/form_data_of_add_new_appointment_screen';
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
        title: 'Form Data',
      ),
      body: const FormDataOfAddNewAppointmentBody(),
    );
  }
}
