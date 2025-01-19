import 'package:flutter/cupertino.dart';
import 'package:riedberg_admin_app/core/utils/exports.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/location_map/widgets/container_location_map.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/location_map/widgets/custom_service_item.dart';

import '../../../features/layout/main/screens/important_number/widgets/container_important_number.dart';

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


  static  final List<EmergencyContact> contacts = [
    EmergencyContact(
      title: "Polizei",
      subtitle: "Police Emergency",
      availability: "Available 24/7",
      number: "110",
      icon: Icons.shield_outlined,
      iconColor: Colors.blue,
      numberColor: Colors.blue,
    ),
    EmergencyContact(
      title: "Feuerwehr & Rettungsdienst",
      subtitle: "Fire & Emergency Medical Services",
      availability: "Available 24/7",
      number: "112",
      icon: Icons.warning_amber_outlined,
      iconColor: Colors.red,
      numberColor: Colors.red,
    ),
    EmergencyContact(
      title: "Ärztlicher Bereitschaftsdienst",
      subtitle: "Medical On-Call Service",
      availability: "Available 24/7",
      number: "116117",
      icon: Icons.favorite_border,
      iconColor: Colors.green,
      numberColor: Colors.green,
    ),
    EmergencyContact(
      title: "Kinder- und Jugendschutztelefon",
      subtitle: "Youth Protection Hotline",
      availability: "Mo - Fr 8:00 - 23:00 Uhr\nSa - So 10:00 - 23:00 Uhr",
      number: "0800 2010111",
      icon: Icons.person_outline,
      iconColor: Colors.purple,
      numberColor: Colors.purple,
    ),

    EmergencyContact(
      title: "Gewalt gegen frauen",
      subtitle: "violence against women Hotline",
      availability: "Available 24/7",
      number: "116016",
      icon: Icons.call_outlined,
      iconColor: AppColors.errorColor,
      numberColor:  AppColors.errorColor,
    ),
  ];

  static  final List<ContainerLocationMap> locationSection = [

    const ContainerLocationMap(
      icon: Icons.map,
      title: 'Wichtige Anlaufstellen und Amter ',
      children: [
        CustomServiceItem(
          name: 'Amt für Wohnungswesen',
          address: 'Adickesallee 67, 60322 Frankfurt am Main',
          type: 'Housing Office',
          distance: '4.2 km',
          phone: "06921234742",
        ),
        CustomServiceItem(
          name: 'Familienkasse Hessen',
          address: 'Emil-von-Behring-Straße 8, 60439 Frankfurt am Main',
          phone: '0800455530',
          type: 'Family Benefits Office',
          distance: '1.8 km',
        ),
        CustomServiceItem(
          name: 'Evangelisches Zentrum für Beratung Am Weißen Stein',
          address: 'Eschersheimer Landstraße 567, 60431 Frankfurt am Main',
          phone: '069530222',
          type: 'Social services and counseling',
          distance: '0.2 km',
        ),
      ],
    ),

    const ContainerLocationMap(
      icon: Icons.favorite,
      title: 'Medical Care',
      children: [
        CustomServiceItem(
          name: 'SC Riedberg Sportanlage',
          address: 'Altenhöferallee 189, 60438 Frankfurt am Main',
          type: 'Sports facilities',
          distance: '1.0 km',
        ),
        CustomServiceItem(
          name: 'Jugendhaus Riedberg',
          address: 'Friedrich-Dessauer-Straße 4-6, 60438 Frankfurt am Main',
          phone: '06975844321',
          type: 'Community center',
        ),
      ],
    ),
    const ContainerLocationMap(
      icon: Icons.school,
      title: 'Education',
      children: [
        CustomServiceItem(
          name: 'SC Riedberg Sportanlage',
          address: 'Altenhöferallee 189, 60438 Frankfurt am Main',
          type: 'Sports facilities',
          distance: '1.0 km',
        ),
        CustomServiceItem(
          name: 'Jugendhaus Riedberg',
          address: 'Friedrich-Dessauer-Straße 4-6, 60438 Frankfurt am Main',
          phone: '06975844321',
          type: 'Community center',
        ),
      ],
    ),
    const ContainerLocationMap(
      icon: Icons.directions_bus,
      title: 'Transport',
      children: [
        CustomServiceItem(
          name: 'SC Riedberg Sportanlage',
          address: 'Altenhöferallee 189, 60438 Frankfurt am Main',
          type: 'Sports facilities',
          distance: '1.0 km',
        ),
        CustomServiceItem(
          name: 'Jugendhaus Riedberg',
          address: 'Friedrich-Dessauer-Straße 4-6, 60438 Frankfurt am Main',
          phone: '06975844321',
          type: 'Community center',
        ),
      ],
    ),
    const ContainerLocationMap(
      icon: Icons.sports_soccer,
      title: 'Sports & Leisure',
      children: [
        CustomServiceItem(
          name: 'SC Riedberg Sportanlage',
          address: 'Altenhöferallee 189, 60438 Frankfurt am Main',
          type: 'Sports facilities',
          distance: '1.0 km',
        ),
        CustomServiceItem(
          name: 'Jugendhaus Riedberg',
          address: 'Friedrich-Dessauer-Straße 4-6, 60438 Frankfurt am Main',
          phone: '06975844321',
          type: 'Community center',
        ),
      ],
    ),
];

 static final List<Map<String, dynamic>> appointmentData = [
    {
      'name': 'Leitung LS',
      'role': 'Leitung',
      'languages': ['German', 'English', 'Spanish', 'French'],
      'days': ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'],
      'specialties': [
        'Management of Accommodation',
        'Violence Protection',
        'Child Protection',
        'Volunteer Coordination',
      ],
    },
    {
      'name': 'Stellvertretende Leitung AM',
      'role': 'Stellvertretende Leitung',
      'languages': ['German', 'English', 'Arabic', 'Kurdish', 'Farsi'],
      'days': ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'],
      'specialties': ['Management of Accommodation', 'Social Counseling'],
    },
    {
      'name': 'Sozialberatung AP',
      'role': 'Sozialberatung',
      'languages': ['German', 'English', 'Farsi'],
      'days': ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'],
      'specialties': ['Social Counseling'],
    },
    {
      'name': 'Verwaltung TM',
      'role': 'Verwaltung',
      'languages': ['German', 'English', 'Tigrinya'],
      'days': ['Tuesday', 'Wednesday', 'Thursday', 'Friday'],
      'specialties': ['Administration', 'Apartment Search'],
    },
  ];

}