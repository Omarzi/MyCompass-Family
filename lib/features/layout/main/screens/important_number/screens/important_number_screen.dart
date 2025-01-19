import 'package:riedberg_admin_app/features/layout/main/screens/important_number/widgets/important_number_body.dart';
import '../../../../../../core/utils/exports.dart';

class ImportantNumberScreen  extends StatelessWidget {
  const ImportantNumberScreen ({super.key});
  static const routeName = '/important_number';
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
        title: 'Important Numbers',
      ),
      body: const ImportantNumberBody(),
    );
  }
}
