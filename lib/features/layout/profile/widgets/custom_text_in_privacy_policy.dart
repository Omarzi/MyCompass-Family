import '../../../../core/utils/exports.dart';

class CustomTextInPrivacyPolicy extends StatelessWidget {
  const CustomTextInPrivacyPolicy({
    super.key,
    required this.privacyPolicyText,
  });

  final Map<String, dynamic> privacyPolicyText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          privacyPolicyText['title'],
          style: AppTextStyles.heading6(context, textColor: AppColors.blackColor).copyWith(fontWeight: FontWeight.bold,
            fontSize:  privacyPolicyText['title'] == "Privacy Policy" ? 18.sp : 20.sp
          ),
        ),
         SizedBox(height: privacyPolicyText['title'] == "Privacy Policy" ? 16.h : 8.h),
        Text(privacyPolicyText['content'], style: TextStyle(fontSize: 16.sp)),

      ],
    );
  }
}
