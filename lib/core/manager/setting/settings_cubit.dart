import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:riedberg_admin_app/core/enums/themes_states.dart';
import 'package:riedberg_admin_app/core/helper_functions/cache_helper.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial()) {
    _loadSettingsFromCache();
  }

  /// Load saved settings (theme and language) from CacheHelper
  void _loadSettingsFromCache() {
    final isDarkMode = CacheHelper.getIsDarkMode();
    final savedLanguage = CacheHelper.getCachedLanguage();

    emit(SettingsLoaded(
      isDarkMode: isDarkMode,
      language: savedLanguage,
    ));
  }

  /// Change theme and save it using CacheHelper
  Future<void> changeTheme(ThemeStatesEnum themeStatesEnum) async {
    bool isDarkMode = themeStatesEnum == ThemeStatesEnum.dark;
    await CacheHelper.cacheIsDarkMode(isDarkMode);
    emit(SettingsLoaded(
      isDarkMode: isDarkMode,
      language: state is SettingsLoaded ? (state as SettingsLoaded).language : 'en',
    ));
  }

  /// Toggle between light and dark theme and save it locally
  Future<void> toggleTheme() async {
    bool newThemeState = !(state is SettingsLoaded && (state as SettingsLoaded).isDarkMode);
    await CacheHelper.cacheIsDarkMode(newThemeState);
    emit(SettingsLoaded(
      isDarkMode: newThemeState,
      language: state is SettingsLoaded ? (state as SettingsLoaded).language : 'en',
    ));
  }

  /// Toggle and save language using CacheHelper
  Future<void> toggleLanguage() async {
    String newLanguage = state is SettingsLoaded && (state as SettingsLoaded).language == 'en' ? 'ar' : 'en';
    await CacheHelper.cacheLanguage(newLanguage);
    emit(SettingsLoaded(
      isDarkMode: state is SettingsLoaded ? (state as SettingsLoaded).isDarkMode : false,
      language: newLanguage,
    ));
  }
}