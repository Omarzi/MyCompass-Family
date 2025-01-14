
import '../../../../core/utils/exports.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>(); // Add a form key
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  bool isEmailFieldFocused = false;
  bool isPasswordFieldFocused = false;
  bool obscureText = true;

  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  void initState() {
    super.initState();

    /// Add listener to focus node
    emailFocusNode.addListener(
        () => setState(() => isEmailFieldFocused = emailFocusNode.hasFocus));
    passwordFocusNode.addListener(() =>
        setState(() => isPasswordFieldFocused = passwordFocusNode.hasFocus));
  }

  @override
  void dispose() {
    /// Clean up the focus node and controller when the widget is disposed.
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 48.h),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            /// Email Focus
            CustomMainTextFormField(
              controller: emailController,
              focusNode: emailFocusNode,
              hintText: 'Email',
              fillColor: isEmailFieldFocused
                  ? AppColors.activeFormColor
                  : AppColors.greyScaleColor50,
              textColor: isEmailFieldFocused
                  ? AppColors.primaryColor500
                  : AppColors.greyScaleColor900,
              borderSide: isEmailFieldFocused
                  ? BorderSide(
                      color: AppColors.primaryColor500,
                      width: 1.w,
                    )
                  : BorderSide.none,
              textInputType: TextInputType.emailAddress,
              prefixIcon: SvgPicture.asset(
                Assets.svgsEmailIcon,
                fit: BoxFit.scaleDown,
                colorFilter: ColorFilter.mode(
                  isEmailFieldFocused
                      ? AppColors.primaryColor500
                      : emailController.text.isEmpty
                          ? AppColors.greyScaleColor500
                          : AppColors.greyScaleColor900,
                  BlendMode.srcIn,
                ),
              ),
              obscureText: false,
              hintColor: isEmailFieldFocused
                  ? AppColors.primaryColor500
                  : AppColors.greyScaleColor500,
              validator: (value) =>
                  AppValidator.validateEmail(value), // Correct
            ),

            SizedBox(height: 24.h),

            /// Password Field
            CustomMainTextFormField(
              controller: passwordController,
              focusNode: passwordFocusNode,
              hintText: 'Password',
              fillColor: isPasswordFieldFocused
                  ? AppColors.activeFormColor
                  : AppColors.greyScaleColor50,
              textColor: isPasswordFieldFocused
                  ? AppColors.primaryColor500
                  : AppColors.greyScaleColor900,
              borderSide: isPasswordFieldFocused
                  ? BorderSide(
                      color: AppColors.primaryColor500,
                      width: 1.w,
                    )
                  : BorderSide.none,
              textInputType: TextInputType.visiblePassword,
              prefixIcon: SvgPicture.asset(
                'assets/images/svgs/password_icon.svg',
                fit: BoxFit.scaleDown,
                colorFilter: ColorFilter.mode(
                  isPasswordFieldFocused
                      ? AppColors.primaryColor500
                      : passwordController.text.isEmpty
                          ? AppColors.greyScaleColor500
                          : AppColors.greyScaleColor900,
                  BlendMode.srcIn,
                ),
              ),
              suffixIcon: IconButton(
                onPressed: toggleObscureText,
                icon: Icon(
                  obscureText ? Iconsax.eye_slash : Iconsax.eye,
                  color: isPasswordFieldFocused
                      ? AppColors.primaryColor500
                      : passwordController.text.isEmpty
                          ? AppColors.greyScaleColor500
                          : AppColors.greyScaleColor900,
                  size: 22.sp,
                ),
              ),
              obscureText: obscureText,
              hintColor: isPasswordFieldFocused
                  ? AppColors.primaryColor500
                  : AppColors.greyScaleColor500,
              maxLines: 1,
              obscuringCharacter: '●',
              validator: (value) =>
                  AppValidator.validatePassword(value), // Correct
            ),

            SizedBox(height: 24.h),

            /// Check Button
            const CheckButton(),

            SizedBox(height: 24.h),

            /// Login Button
            CustomMainButton(
              onTap: _submitForm,
              padding: EdgeInsets.symmetric(vertical: 18.h),
              haveBoxShadow: emailController.text.isNotEmpty &&
                  passwordController.text.isNotEmpty,
              widgetInButton: Center(
                child: Text(
                  'Sign in',
                  style: AppTextStyles.bodyLarge(context,
                      textColor: AppColors.whiteColor),
                ),
              ),
            ),

            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }

  void toggleObscureText() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      /// Form is valid, proceed with login logic
      String email = emailController.text;
      String password = passwordController.text;
      Navigator.pushNamed( context,LayoutScreen.routeName);


      /// Here you would typically make an API call or perform authentication
      // print('Email: $email, Password: $password');
      //
      // await Future.delayed(const Duration(seconds: 1));
      //
      // buildCongratulationsDialog(
      //   context,
      //   image: Assets.svgsShowDialogeIcon1,
      //   title: 'Congratulations!',
      //   description:
      //       'Your account is ready to use. You will be redirected to the Home page in a few seconds.',
      // );
    } else {
      setState(() {
        autoValidateMode = AutovalidateMode.always;
      });
    }
  }
}
