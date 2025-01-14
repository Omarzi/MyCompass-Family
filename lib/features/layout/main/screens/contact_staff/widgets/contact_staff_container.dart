import 'package:riedberg_admin_app/core/utils/exports.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/contact_staff/widgets/custom_container_contact_staff.dart';

class ContactStaffContainer extends StatelessWidget {
  const ContactStaffContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (context, index) => SizedBox(height: 20.h),
      itemBuilder: (context, index) => CustomContainerContactStaff(),
    ); // Closing brace added here for ListView.separated
  }
}
