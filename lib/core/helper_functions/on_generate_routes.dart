import 'package:riedberg_admin_app/features/layout/main/screens/appointment/screens/get_all_appointment_screen.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/contact_staff/screen/contact_staff_screen.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/forum/screens/forum_screen.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/maintenance/screen/add_maintenance_screen.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/maintenance/screen/maintenance_screen.dart';

import '../../features/layout/main/screens/announcement/screens/announcement_screen.dart';
import '../../features/layout/main/screens/appointment/screens/add_new_appointment_screen.dart';
import '../../features/layout/main/screens/appointment/screens/form_data_of_add_new_appointment_screen.dart';
import '../../features/layout/main/screens/forum/screens/add_new_forum_screen.dart';
import '../../features/layout/main/screens/gallery/screens/gallery_screen.dart';
import '../../features/layout/main/screens/gallery/screens/show_all_images.dart';
import '../../features/layout/main/screens/important_number/screens/important_number_screen.dart';
import '../../features/layout/main/screens/location_map/screens/location_map_screen.dart';
import '../utils/exports.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {

    case LoginScreen.routeName:
      return _buildPageRoute(const LoginScreen(), settings);

    case SplashScreen.routeName:
      return _buildPageRoute(const SplashScreen(), settings);
       return _buildPageRoute(const LoginScreen(), settings);
    case LayoutScreen.routeName:
      return _buildPageRoute(const LayoutScreen(), settings);

    case FamilyDataScreen.routeName:
      return _buildPageRoute(const FamilyDataScreen(), settings);

 case PrivacyPolicyScreen.routeName:
      return _buildPageRoute(const PrivacyPolicyScreen(), settings);

      case NotificationScreen.routeName:
      return _buildPageRoute(const NotificationScreen(), settings);

    case ContactStaffScreen.routeName:
      return _buildPageRoute(const ContactStaffScreen(), settings);

    case MaintenanceScreen.routeName:
      return _buildPageRoute(const MaintenanceScreen(), settings);

    case AddMaintenanceScreen.routeName:
      return _buildPageRoute(const AddMaintenanceScreen(), settings);

    case AnnouncementScreen.routeName:
      return _buildPageRoute(const AnnouncementScreen(), settings);

    case GetAllAppointmentScreen.routeName:
      return _buildPageRoute(const GetAllAppointmentScreen(), settings);

      case GalleryScreen.routeName:
      return _buildPageRoute(const GalleryScreen(), settings);

      case ShowAllImagesScreen.routeName:
        final galleryTitle = settings.arguments as String;
      return _buildPageRoute(ShowAllImagesScreen(galleryTitle: galleryTitle,), settings);

    case ForumScreen.routeName:
      return _buildPageRoute(const ForumScreen(), settings);

      case AddNewForumScreen.routeName:
      return _buildPageRoute(const AddNewForumScreen(), settings);

    case ImportantNumberScreen.routeName:
      return _buildPageRoute(const ImportantNumberScreen(), settings);

    case LocationMapScreen.routeName:
      return _buildPageRoute(const LocationMapScreen(), settings);

    case AddNewAppointmentScreen.routeName:
      return _buildPageRoute(const AddNewAppointmentScreen(), settings);

      case FormDataOfAddNewAppointmentScreen.routeName:
      return _buildPageRoute(const FormDataOfAddNewAppointmentScreen(), settings);

    default:
      return _buildPageRoute(const Scaffold(), settings);
  }
}

PageRouteBuilder _buildPageRoute(Widget page, RouteSettings settings) {
  return PageRouteBuilder(
    settings: settings,
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const curve = Curves.easeInOut;
      final tween = Tween(begin: const Offset(1, 0), end: Offset.zero).chain(CurveTween(curve: curve));
      final offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
