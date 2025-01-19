import '../../../../../../core/utils/exports.dart';

class CustomServiceItem extends StatelessWidget {
  final String name;
  final String address;
  final String type;
  final String? phone;
  final String? distance;
  const CustomServiceItem({super.key, required this.name, required this.address, required this.type, this.phone, this.distance});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
           SizedBox(height: 4.h),
          Row(
            children: [
               Icon(Icons.place, size: 18.sp, color: Colors.grey),
               SizedBox(width: 6.w),
              Expanded(
                child: Text(
                  address,
                  style: const TextStyle(color: Colors.grey),
                ),
              ),
              if (distance != null)
                Chip(
                  label: Text(distance!),
                  backgroundColor: AppColors.greyScaleColor200,
                ),
            ],
          ),
          if (phone != null) ...[
             SizedBox(height: 6.h),
            Row(
              children: [
                 Icon(Icons.phone, size: 16.sp, color: Colors.grey),
                 SizedBox(width: 6.w),
                Text(phone!, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ],
           SizedBox(height: 6.h),
          Text(type, style: TextStyle(color: Colors.grey)),
          SizedBox(height: 6.h),
          Divider(thickness: 1.w,color: AppColors.greyScaleColor400,)
        ],
      ),
    );
  }
}