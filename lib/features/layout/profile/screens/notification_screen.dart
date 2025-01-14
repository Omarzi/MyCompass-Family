import '../../../../core/utils/exports.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});
  static const routeName = '/notification';

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
        isCenterTitle: false,
        onPressedBack: (){
          Navigator.pop(context);
        },
        haveLeadingButton: true,
        haveTitle: true,
        title: 'Notification',
      ),
      body: ListView.builder(
        itemCount: 3,
          itemBuilder: (context,index){
            return NotificationBody(
                      title: "System Update",
                      content: "Your app has been updated to the latest version.",
                    );
          }
      )
      // ListView(
      //   shrinkWrap: true,
      //   children: const [
      //
      //     NotificationBody(
      //       title: "System Update",
      //       content: "Your app has been updated to the latest version.",
      //     ),
      //     NotificationBody(
      //       title: "Reminder",
      //       content: "Don't forget your meeting at 3 PM today.",
      //     ),
      //   ],
      // ),
    );
  }
}

