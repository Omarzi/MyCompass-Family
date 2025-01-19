import 'package:riedberg_admin_app/core/utils/exports.dart';

class RiedbergAdminApp extends StatelessWidget {
  const RiedbergAdminApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Riedberg User',
        // initialRoute: ForgetPasswordOtpScreen.routeName,
        onGenerateRoute: onGenerateRoute,
        initialRoute: SplashScreen.routeName,
        // initialRoute: LayoutScreen.routeName,
        // initialRoute: LoginScreen.routeName,
      )
    );
  }
}