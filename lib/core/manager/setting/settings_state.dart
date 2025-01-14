part of 'settings_cubit.dart';

abstract class SettingsState {}

class SettingsInitial extends SettingsState {}

class SettingsLoaded extends SettingsState {
  final bool isDarkMode;
  final String language;

  SettingsLoaded({
    required this.isDarkMode,
    required this.language,
  });
}
