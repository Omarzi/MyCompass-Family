import '../../../../core/utils/exports.dart';

class CustomDataInPrivacyPolicy extends StatelessWidget {
  const CustomDataInPrivacyPolicy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
        separatorBuilder: (context, index) => SizedBox(height: 20.h),
        itemCount: AppConstants.listOfPrivacyPolicy.length,
          itemBuilder: (context, index) {
      final listOfPrivacyPolicy = AppConstants.listOfPrivacyPolicy[index];
     return CustomTextInPrivacyPolicy(privacyPolicyText: listOfPrivacyPolicy);
    },
    );
  }
}


