import 'package:riedberg_admin_app/features/layout/main/screens/maintenance/widgets/Add_maintenance_form.dart';
import '../../../../../../core/utils/exports.dart';

class AddNewForumForm extends StatelessWidget {
  AddNewForumForm({super.key});

  final TextEditingController titleController = TextEditingController();
  final TextEditingController desController = TextEditingController();
  final FocusNode titleFocusNode = FocusNode();
  final FocusNode desFocusNode = FocusNode();
  final bool isTitleFieldFocused = false;
  final bool isDesFieldFocused = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Title",
          style: AppTextStyles.bodyXLarge(
            context,
            textColor: AppColors.blackColor,
            fontWeight: AppConstants.bold,
          ),
        ),
        SizedBox(height: 5.h),
        CustomMainTextFormField(
          controller: titleController,
          focusNode: titleFocusNode,
          hintText: 'Title',
          fillColor: AppColors.whiteColor,
          textColor:
          isTitleFieldFocused ? AppColors.primaryColor500 : AppColors.blackColor,
          borderSide:
              BorderSide(color: AppColors.greyScaleColor500, width: 1.w),
          textInputType: TextInputType.emailAddress,
          obscureText: false,
          hintColor:
          isTitleFieldFocused ? AppColors.primaryColor500 : AppColors.blackColor,
          validator: (value) => AppValidator.validateEmail(value),
        ),
        SizedBox(height: 20.h),
        Text(
          "Description",
          style: AppTextStyles.bodyXLarge(
            context,
            textColor: AppColors.blackColor,
            fontWeight: AppConstants.bold,
          ),
        ),
        SizedBox(height: 5.h),
        CustomMainTextFormField(
          controller: desController,
          focusNode: desFocusNode,
          hintText: 'Description',
          fillColor: AppColors.whiteColor,
          textColor:
              isDesFieldFocused ? AppColors.primaryColor500 : AppColors.blackColor,
          borderSide:
              BorderSide(color: AppColors.greyScaleColor500, width: 1.w),
          textInputType: TextInputType.emailAddress,
          obscureText: false,
          hintColor:
          isDesFieldFocused ? AppColors.primaryColor500 : AppColors.blackColor,
          validator: (value) => AppValidator.validateEmail(value),
        ),
        SizedBox(height: 20.h),
        Text(
          "Upload Image",
          style: AppTextStyles.bodyXLarge(
            context,
            textColor: AppColors.blackColor,
            fontWeight: AppConstants.bold,
          ),
        ),
        SizedBox(height: 20.h),
        Center(
          child: Column(
            children: [
              const ImagePickerScreen(),
              SizedBox(height: 20.h),
            ],
          ),
        ),
        SizedBox(height: 40.h),
        CustomMainButton(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
          onTap: () {},
          widgetInButton:  Center(child: Text("Submit",style: AppTextStyles.bodyXLarge(context,textColor: AppColors.whiteColor,fontWeight: AppConstants.bold),)),
        ),

      ],
    );
  }
}
