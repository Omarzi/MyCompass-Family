import '../../../../../../core/utils/exports.dart';

class AnnouncementCard extends StatelessWidget {
  const AnnouncementCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      separatorBuilder: (context, index) => SizedBox(height: 25.h),
      itemBuilder: (context, index) => CustomAnnouncementCard(
        announcementTitle: "Important Building Maintenance",
        priority: index == 0 ? "High Priority" : "Low Priority",
        announcementDescription:
            "Scheduled maintenance work on the heating system next monday",
        type: "Facility Management",
        announcementDate: "1/1/2024",
        announcementImage: "assets/images/pngs/logo.png",
        haveAnImage: index == 0 ? true : false,
      ),
    );
  }
}
