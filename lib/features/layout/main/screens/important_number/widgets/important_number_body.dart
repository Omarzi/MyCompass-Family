import 'package:riedberg_admin_app/features/layout/main/screens/important_number/widgets/container_important_information.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/important_number/widgets/container_important_number.dart';
import '../../../../../../core/utils/exports.dart';

class ImportantNumberBody extends StatelessWidget {
  const ImportantNumberBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(
        left: AppConstants.paddingHorizontalInScreens,
        right: AppConstants.paddingHorizontalInScreens,
        top: AppConstants.paddingVerticalInScreens / 2,
      ),
      children: [
        ...AppConstants.contacts.map((contact) => ContainerImportantNumber(
          iconData: contact.icon,
          color: contact.iconColor,
          title: contact.title,
          subTitle: contact.subtitle,
          availability: contact.availability,
          number: contact.number,
        )),
        const ContainerImportantInformation(),
      ],
    );
  }
}
