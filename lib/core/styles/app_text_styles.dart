import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:riedberg_admin_app/core/utils/exports.dart';
import '../manager/setting/settings_cubit.dart';

class AppTextStyles {
  /// Determine font family dynamically
  static String _getFontFamily(BuildContext context) {
    final settingsCubit = context.read<SettingsCubit>();

    if (settingsCubit.state is SettingsLoaded) {
      final settingsState = settingsCubit.state as SettingsLoaded;
      return settingsState.language == 'ar' ? 'Cairo' : 'Urbanist';
    } else {
      return 'Urbanist';
    }
  }

  /// Headings
  static TextStyle heading1(BuildContext context, {required Color textColor}) => TextStyle(
    fontSize: 48.sp,
    fontWeight: FontWeight.bold,
    color: textColor,
    fontFamily: _getFontFamily(context),
  );

  static TextStyle heading2(BuildContext context, {required Color textColor}) => TextStyle(
    fontSize: 40.sp,
    fontWeight: FontWeight.bold,
    color: textColor,
    fontFamily: _getFontFamily(context),
  );

  static TextStyle heading3(BuildContext context, {required Color textColor}) => TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: textColor,
    fontFamily: _getFontFamily(context),
  );

  static TextStyle heading4(BuildContext context, {required Color textColor}) => TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: textColor,
    fontFamily: _getFontFamily(context),
  );

  static TextStyle heading5(BuildContext context, {required Color textColor}) => TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    color: textColor,
    fontFamily: _getFontFamily(context),
  );

  static TextStyle heading6(BuildContext context, {required Color textColor}) => TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: textColor,
    fontFamily: _getFontFamily(context),
  );

  /// Body Styles
  static TextStyle bodyXLarge(BuildContext context, {FontWeight? fontWeight, required Color textColor}) => TextStyle(
    fontSize: 18.sp,
    fontWeight: fontWeight,
    color: textColor,
    fontFamily: _getFontFamily(context),
  );

  static TextStyle bodyLarge(BuildContext context, {FontWeight? fontWeight, required Color textColor}) => TextStyle(
    fontSize: 16.sp,
    fontWeight: fontWeight,
    color: textColor,
    fontFamily: _getFontFamily(context),
  );

  static TextStyle bodyMedium(BuildContext context, {FontWeight? fontWeight, required Color textColor}) => TextStyle(
    fontSize: 14.sp,
    fontWeight: fontWeight,
    color: textColor,
    fontFamily: _getFontFamily(context),
  );

  static TextStyle bodySmall(BuildContext context, {FontWeight? fontWeight, required Color textColor}) => TextStyle(
    fontSize: 12.sp,
    fontWeight: fontWeight,
    color: textColor,
    fontFamily: _getFontFamily(context),
  );

  static TextStyle bodyXSmall(BuildContext context, {FontWeight? fontWeight, required Color textColor}) => TextStyle(
    fontSize: 10.sp,
    fontWeight: fontWeight,
    color: textColor,
    fontFamily: _getFontFamily(context),
  );
}
