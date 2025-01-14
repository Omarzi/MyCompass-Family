import 'package:flutter/cupertino.dart';
import 'package:riedberg_admin_app/core/utils/exports.dart';

class AppConstants {
  // static SharedPreferences? sharedPreferences;

  /// Border Radius
  static const double borderRadius = 12.0;

  /// Padding Horizontal
  static final double paddingHorizontalInScreens = 24.w;

  /// Padding Vertical
  static final double paddingVerticalInScreens = 48.h;

  /// Screen Size
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.sizeOf(context).width;
  }
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.sizeOf(context).height;
  }

  /// Is Dark Mode

  /// Font Weights
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;

  /// Obscure Text State
  static bool obscureText = true;

  /// Toggle Obscure Text
  static void toggleObscureText() {
    obscureText = !obscureText;
  }

  static List<String> listOfTitles = [
    'Family data',
    'Change Language',
    'Notifications',
    'Privacy Policy',
    'Logout'
  ];

  static List<IconData> listOfIcons = [
    Iconsax.user,
    Iconsax.language_square,
    Iconsax.notification,
    Icons.privacy_tip_outlined,
    Iconsax.logout
  ];

  static List<String> listOfFamilyDataTitles = [
    'User Name',
    'Email',
    'Password',
    'Phone Number',
    'Number of Apartments',
    'Family Members'
  ];

  static List<Map<String, dynamic>> items = [
    {"icon": Icons.announcement, "label": "Announcement", "color": AppColors.blueColor},
    {"icon": Icons.apartment, "label":"Book Appointment", "color": AppColors.redColor},
    {"icon": Icons.contact_page, "label": "Contact Staff", "color": AppColors.greenColor},
    {"icon": Icons.location_history, "label": "Location Map", "color": AppColors.orangeColor},
    {"icon": Icons.camera_alt_rounded, "label": "Gallery", "color": AppColors.blueGreyColor},
    {"icon": Icons.forum, "label":"Forum","color": AppColors.purpleColor},
    {"icon": Icons.design_services, "label": "Maintenance","color": AppColors.amberColor},
    {"icon": Icons.label_important, "label": "Important Numbers","color": AppColors.primaryColor500},
  ];

  static List<Map<String, String>> listOfPrivacyPolicy = [
  { "title": "Privacy Policy","content":  "Welcome to our Privacy Policy. Your privacy is critically important to us. "
      "We are committed to protecting your personal information and your right to privacy. "
      "If you have any questions or concerns about this policy, please contact us.",},
    { "title": "Information We Collect","content":   "We collect personal information that you provide to us when you register, make purchases, or use our services. "
        "This may include your name, email address, payment information, and other relevant details.",},
    { "title": "How We Use Your Information","content": "We use your information to provide, operate, and maintain our services, improve user experience, "
    "and comply with legal obligations. We do not share your personal data without your consent.",},
    { "title": "Contact Us","content":  "If you have any questions about this Privacy Policy, please contact us at support@example.com.",},

];
  static final List<String> days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"];
  static final List<String> languages = ["Arabic", "English","German"];
  static final List<String> workSpecialization = ["Flutter", "Ui/UX","Backend","Frontend"];
  static final List<String> list =['pending','medium priority'];
  static final List<String> category =['Plumbing', 'Electrical', 'Heating', 'Other'];
  static final List<String> priority =['Low Priority', 'Medium Priority', 'High Priority'];


}