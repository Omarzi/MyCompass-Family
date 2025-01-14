import 'package:riedberg_admin_app/core/utils/exports.dart';

class GetAllAppointmentsBody extends StatefulWidget {
  const GetAllAppointmentsBody({super.key});

  @override
  State<GetAllAppointmentsBody> createState() => _GetAllAppointmentsBodyState();
}

class _GetAllAppointmentsBodyState extends State<GetAllAppointmentsBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          left: AppConstants.paddingHorizontalInScreens,
          right: AppConstants.paddingHorizontalInScreens,
          top: AppConstants.paddingVerticalInScreens,
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.r),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: const [
                  BoxShadow(
                    color: AppColors.greyScaleColor300,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Leitung LS',
                        style: AppTextStyles.bodyXLarge(
                          context,
                          textColor: AppColors.blackColor,
                          fontWeight: AppConstants.bold,
                        ).copyWith(
                          fontSize: 18.sp,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 5.h),
                        decoration: BoxDecoration(
                          color: AppColors.secondaryColor500.withOpacity(.4),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Center(
                          child: Text(
                            "Pending",
                            style: AppTextStyles.bodyMedium(
                              context,
                              textColor: AppColors.blackColor,
                              fontWeight: AppConstants.medium,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.h),
                  Row(
                    children: [
                      Icon(Icons.calendar_today_outlined, size: 18.sp),
                      SizedBox(width: 12.w),
                      Text(
                        'February 7th, 2025',
                        style: AppTextStyles.bodyXLarge(
                          context,
                          textColor: AppColors.blackColor,
                          fontWeight: AppConstants.regular,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.h),
                  Row(
                    children: [
                      Icon(Icons.timer_outlined, size: 20.sp),
                      SizedBox(width: 12.w),
                      Text(
                        '2:30 PM',
                        style: AppTextStyles.bodyXLarge(
                          context,
                          textColor: AppColors.blackColor,
                          fontWeight: AppConstants.regular,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.h),
                  Row(
                    children: [
                      Icon(Icons.person_outline, size: 20.sp),
                      SizedBox(width: 12.w),
                      Text(
                        'weyh',
                        style: AppTextStyles.bodyXLarge(
                          context,
                          textColor: AppColors.blackColor,
                          fontWeight: AppConstants.regular,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.h),
                  SizedBox(height: 20.h),
                  ExpandableText(
                    text:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: AppTextStyles.bodyXLarge(
                      context,
                      textColor: AppColors.blackColor,
                      fontWeight: AppConstants.regular,
                    ),
                    maxLines: 3,
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 18.w, vertical: 5.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(
                            color: AppColors.blackColor,
                            width: 1.w
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Cancel',
                            style: AppTextStyles.bodyXLarge(
                              context,
                              textColor: AppColors.blackColor,
                              fontWeight: AppConstants.regular,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExpandableText extends StatefulWidget {
  final String text;
  final int maxLines;
  final TextStyle style;

  const ExpandableText({
    super.key,
    required this.text,
    this.maxLines = 3,
    required this.style,
  });

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedCrossFade(
          duration: const Duration(milliseconds: 300),
          firstChild: Text(
            widget.text,
            style: widget.style,
            maxLines: widget.maxLines,
            overflow: TextOverflow.ellipsis,
          ),
          secondChild: Text(
            widget.text,
            style: widget.style,
          ),
          crossFadeState: _isExpanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              _isExpanded ? 'less' : 'more',
              style: widget.style.copyWith(
                color: AppColors.primaryColor500,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}