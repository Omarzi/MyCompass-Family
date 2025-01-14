import '../../../../core/utils/exports.dart';

class FamilyDataBody extends StatelessWidget {
  const FamilyDataBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w,),
        child: const Column(
          children: [
            FamilyFields(),
          ],
        ),
    ));
  }
}
