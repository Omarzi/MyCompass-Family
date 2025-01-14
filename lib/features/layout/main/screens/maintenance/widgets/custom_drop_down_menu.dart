import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:riedberg_admin_app/core/utils/exports.dart';
class CustomDropDownMenu extends StatefulWidget {
  const CustomDropDownMenu({super.key, required this.selectedValue, required this.dropdownItems});

  final String? selectedValue;
  final List<String> dropdownItems;

  @override
  State<CustomDropDownMenu> createState() => _CustomDropDownMenuState();
}

class _CustomDropDownMenuState extends State<CustomDropDownMenu> {
  late String _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.selectedValue ?? 'Select Category'; // Default value if null
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.greyScaleColor500),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isExpanded: true,
          hint: Text('Select Category'),
          value: _selectedValue,
          items: widget.dropdownItems.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              _selectedValue = newValue!;
            });
          },
          dropdownStyleData: DropdownStyleData(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.whiteColor, // Background color of the dropdown
            ),
          ),
        ),
      ),
    );
  }
}
