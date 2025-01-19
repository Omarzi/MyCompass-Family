import 'package:image_picker/image_picker.dart';
import '../../../../../../core/utils/exports.dart';
import '../../maintenance/widgets/Add_maintenance_form.dart';

class FormAddNewAppointment extends StatefulWidget {
  const FormAddNewAppointment({super.key});

  @override
  State<FormAddNewAppointment> createState() => _FormAddNewAppointmentState();
}

class _FormAddNewAppointmentState extends State<FormAddNewAppointment> {
  final ImagePicker _picker = ImagePicker();
  DateTime? selectedDate;
  String? selectedTimeSlot;
  final TextEditingController reasonController = TextEditingController();
  final TextEditingController notesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Date', style: TextStyle(fontSize: 16)),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: () async {
            DateTime? date = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2020),
              lastDate: DateTime(2030),
            );
            setState(() {
              selectedDate = date;
            });
          },
          child: Container(
            width: double.infinity,
            padding:  EdgeInsets.symmetric( horizontal: 16.h,vertical: 12.h),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(AppConstants.borderRadius),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedDate == null
                      ? 'Select a date'
                      : '${selectedDate!.month}/${selectedDate!.day}/${selectedDate!.year}',
                  style: const TextStyle(fontSize: 16),
                ),
                Icon(Icons.date_range,color: AppColors.greyScaleColor600,)
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        const Text('Time', style: TextStyle(fontSize: 16)),
        const SizedBox(height: 8),
        DropdownButton<String>(
          isExpanded: true,
          hint: const Text('Select a time slot'),
          value: selectedTimeSlot,
          items: [
            '8:00 AM - 9:00 AM',
            '9:00 AM - 10:00 AM',
            '10:00 AM - 11:00 AM',
            '1:00 PM - 2:00 PM',
            '4:00 PM - 5:00 PM',
          ].map((timeSlot) {
            return DropdownMenuItem<String>(
              value: timeSlot,
              child: Text(timeSlot),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              selectedTimeSlot = value;
            });
          },
        ),
        const SizedBox(height: 16),
        const Text('Reason for Appointment', style: TextStyle(fontSize: 16)),
        const SizedBox(height: 8),
        TextField(
          controller: reasonController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter reason',
          ),
        ),
        const SizedBox(height: 16),
        const Text('Additional Notes', style: TextStyle(fontSize: 16)),
        const SizedBox(height: 8),
        TextField(
          controller: notesController,
          maxLines: 3,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter additional notes',
          ),
        ),
        const SizedBox(height: 16),
        const Text('Attachments', style: TextStyle(fontSize: 16)),
        const SizedBox(height: 8),
        Center(
          child: Column(
            children: [
              const ImagePickerScreen(),
              SizedBox(height: 20.h),
            ],
          ),
        ),
        // const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel',style: AppTextStyles.bodyXLarge(context, textColor: AppColors.primaryColor,fontWeight: AppConstants.semiBold),),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle appointment scheduling
              },
              child: Text('Schedule Appointment',style: AppTextStyles.bodyXLarge(context, textColor: AppColors.primaryColor,fontWeight: AppConstants.semiBold)),
            ),
          ],
        ),
      ],
    );

  }
}
