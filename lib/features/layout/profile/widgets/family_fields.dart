import '../../../../core/utils/exports.dart';

class FamilyFields extends StatefulWidget {
  const FamilyFields({super.key});

  @override
  State<FamilyFields> createState() => _FamilyFieldsState();
}

class _FamilyFieldsState extends State<FamilyFields> {

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (context, index) => SizedBox(height: 15.h),
        itemCount: 6,
        itemBuilder: (context, index) {
          return CustomContainerFamilyField(
            title: AppConstants.listOfFamilyDataTitles[index],
            data: "Amir Adel",
          );
        },
          );
        }
}

