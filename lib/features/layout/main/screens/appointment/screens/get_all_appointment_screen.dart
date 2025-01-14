import 'package:flutter/material.dart';
import 'package:riedberg_admin_app/core/helper_functions/build_app_bar.dart';
import 'package:riedberg_admin_app/core/helper_functions/cache_helper.dart';
import 'package:riedberg_admin_app/core/helper_functions/navigation_extension.dart';
import 'package:riedberg_admin_app/core/utils/colors/app_colors.dart';
import 'package:riedberg_admin_app/core/utils/exports.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/appointment/widgets/get_all_appointments_body.dart';

class GetAllAppointmentScreen extends StatelessWidget {
  const GetAllAppointmentScreen({super.key});

  static const routeName = '/get_all_appointment';

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = CacheHelper.getIsDarkMode();
    bool isRTL = Directionality.of(context) == TextDirection.rtl;

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: buildAppBar(
        isRTL: isRTL,
        isDarkMode: isDarkMode,
        context: context,
        onPressedBack: () => context.pop(),
        haveLeadingButton: true,
        haveTitle: true,
        isCenterTitle: true,
        title: 'Appointments',
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.add_circle, color: AppColors.primaryColor),
          ),
        ],
      ),
      body: const GetAllAppointmentsBody(),
    );
  }
}