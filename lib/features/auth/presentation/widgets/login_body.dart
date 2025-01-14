import '../../../../core/utils/exports.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppConstants.paddingHorizontalInScreens,
          vertical: AppConstants.paddingVerticalInScreens,
        ),
        child: const Column(
          children: [
            LoginHeader(),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}
