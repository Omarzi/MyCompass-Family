import 'dart:io';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:riedberg_admin_app/core/utils/exports.dart';

class AddMaintenanceForm extends StatefulWidget {
  const AddMaintenanceForm({super.key});

  @override
  State<AddMaintenanceForm> createState() => _AddMaintenanceFormState();
}

class _AddMaintenanceFormState extends State<AddMaintenanceForm> {
  String? selectedCategory; // Holds the selected value for the category dropdown
  String? selectedPriority; // Holds the selected value for the priority dropdown
  final TextEditingController controller = TextEditingController();
  final FocusNode focusNode = FocusNode();
  bool isFieldFocused = false;
  File? _selectedImage;
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    // Ensure selectedCategory is valid or default to the first item in the category list
    if (selectedCategory == null ||
        !AppConstants.category.contains(selectedCategory)) {
      selectedCategory =
      AppConstants.category.isNotEmpty ? AppConstants.category[0] : null;
    }
    // Ensure selectedPriority is valid or default to the first item in the priority list
    if (selectedPriority == null ||
        !['Low Priority', 'Medium Priority', 'High Priority']
            .contains(selectedPriority)) {
      selectedPriority = 'Low Priority'; // Default to 'Low Priority'
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Category",
          style: AppTextStyles.bodyXLarge(
            context,
            textColor: AppColors.blackColor,
            fontWeight: AppConstants.bold,
          ),
        ),
        SizedBox(height: 5.h),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.greyScaleColor500),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<String>(
              isExpanded: true,
              hint: const Text('Select Category'),
              value: selectedCategory,
              items: <String>['Plumbing', 'Electrical', 'Heating', 'Other']
                  .map((String value) {
                return DropdownMenuItem<String>(
                    value: value, child: Text(value));
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedCategory = newValue!;
                });
              },
              dropdownStyleData: DropdownStyleData(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.whiteColor,
                ),
              ),
            ),
          ),
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
          controller: controller,
          focusNode: focusNode,
          hintText: 'Description',
          fillColor: AppColors.whiteColor,
          textColor:
          isFieldFocused ? AppColors.primaryColor500 : AppColors.blackColor,
          borderSide: BorderSide(
              color: AppColors.greyScaleColor500, width: 1.w),
          textInputType: TextInputType.emailAddress,
          obscureText: false,
          hintColor:
          isFieldFocused ? AppColors.primaryColor500 : AppColors.blackColor,
          validator: (value) => AppValidator.validateEmail(value),
        ),
        SizedBox(height: 20.h),
        Text(
          "Priority",
          style: AppTextStyles.bodyXLarge(
            context,
            textColor: AppColors.blackColor,
            fontWeight: AppConstants.bold,
          ),
        ),
        SizedBox(height: 5.h),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.greyScaleColor500),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<String>(
              isExpanded: true,
              hint: const Text('Select Priority'),
              value: selectedPriority,
              items: <String>[
                'Low Priority',
                'Medium Priority',
                'High Priority'
              ].map((String value) {
                return DropdownMenuItem<String>(
                    value: value, child: Text(value));
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedPriority = newValue!;
                });
              },
              dropdownStyleData: DropdownStyleData(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.whiteColor,
                ),
              ),
            ),
          ),
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
      ],
    );
  }
}




class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  _ImagePickerScreenState createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  File? _selectedImage;
  final ImagePicker _picker = ImagePicker();

  void _pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
    Navigator.pop(context);
  }

  void _showImagePickerOptions() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Select Image',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              ListTile(
                leading: const Icon(Icons.camera_alt, color: AppColors.primaryColor500),
                title: const Text('Camera'),
                onTap: () => _pickImage(ImageSource.camera),
              ),
              ListTile(
                leading: const Icon(Icons.photo_library, color: AppColors.primaryColor500),
                title: const Text('Gallery'),
                onTap: () => _pickImage(ImageSource.gallery),
              ),
              const SizedBox(height: 8),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _showImagePickerOptions,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.3,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: _selectedImage != null
            ? Image.file(
          _selectedImage!,
          fit: BoxFit.cover,
        )
            : Lottie.asset(
          "assets/lotties/upload.json",
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
