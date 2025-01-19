import 'package:riedberg_admin_app/features/layout/main/screens/announcement/screens/announcement_screen.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/appointment/screens/get_all_appointment_screen.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/contact_staff/screen/contact_staff_screen.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/forum/screens/forum_screen.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/gallery/screens/gallery_screen.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/important_number/screens/important_number_screen.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/location_map/screens/location_map_screen.dart';
import 'package:riedberg_admin_app/features/layout/main/screens/maintenance/screen/maintenance_screen.dart';
import '../../../../core/utils/exports.dart';

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(18.0.sp),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of items per row
          crossAxisSpacing: 16.0.w, // Horizontal space between items
          mainAxisSpacing: 16.0.h, // Vertical space between items
        ),
        itemCount: AppConstants.items.length,
        itemBuilder: (context, index) {
          final item = AppConstants.items[index];
          return customCategoryCard(item: item, onTapCard:
          (){
            index == 0? Navigator.pushNamed(context, AnnouncementScreen.routeName):
           index == 1? Navigator.pushNamed(context, GetAllAppointmentScreen.routeName):
           index == 2? Navigator.pushNamed(context, ContactStaffScreen.routeName):
           index == 3? Navigator.pushNamed(context, LocationMapScreen.routeName):
           index == 4? Navigator.pushNamed(context, GalleryScreen.routeName):
           index == 5? Navigator.pushNamed(context, ForumScreen.routeName):
           index == 7? Navigator.pushNamed(context, ImportantNumberScreen.routeName)
           :Navigator.pushNamed(context, MaintenanceScreen.routeName);
           ;
          }
          );
        },
      ),
    );
  }
}
