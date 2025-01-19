import '../../../../../../core/utils/exports.dart';

class CustomCardOfAddNewAppointment extends StatefulWidget {
  const CustomCardOfAddNewAppointment({super.key, this.onTap, required this.appointmentData, required this.isSelected});
  final void Function()? onTap;
  final bool isSelected ;
  final Map appointmentData;
  @override
  State<CustomCardOfAddNewAppointment> createState() => _CustomCardOfAddNewAppointmentState();
}

class _CustomCardOfAddNewAppointmentState extends State<CustomCardOfAddNewAppointment> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Card(
        color: AppColors.whiteColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: widget.isSelected == true ? AppColors.primaryColor : Colors.grey.shade300,
            width: widget.isSelected == true ? 3.w : 2.w,
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Padding(
          padding:  EdgeInsets.all(14.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                // staff['name'],
                widget.appointmentData['name'],
                style: AppTextStyles.bodyXLarge(context, textColor: AppColors.blackColor,fontWeight: AppConstants.bold),
              ),
              Text(
                // staff['role'],
                widget.appointmentData['role'],
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Icon(Icons.language, size: 18.sp),
                  SizedBox(width: 6.w),
                  Expanded(
                    child: Text(
                      // staff['languages'].join(', '),
                        widget.appointmentData['languages'].join(', '),
                      style: AppTextStyles.bodyLarge(context, textColor: AppColors.blackColor),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Icon(Icons.calendar_today, size: 18.sp),
                  SizedBox(width: 6.w),
                  Expanded(
                    child: Text(
                      widget.appointmentData['days'].join(', '),
                      style: AppTextStyles.bodyLarge(context, textColor: AppColors.blackColor),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Text(
                'Specialties',
                style: AppTextStyles.bodyXLarge(context, textColor: AppColors.blackColor,fontWeight: AppConstants.bold),
              ),
              SizedBox(height: 8.h),
              Wrap(
                spacing: 8.0,
                runSpacing: 4.0,
                children: widget.appointmentData['specialties']
                    .map<Widget>(
                      (specialty) => Chip(
                    label: Text(
                      specialty,
                      style: TextStyle(fontSize: 12.0.sp),
                    ),
                    backgroundColor: AppColors.greyScaleColor200,
                  ),
                )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
