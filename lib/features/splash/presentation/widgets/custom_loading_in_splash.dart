
import 'package:riedberg_admin_app/core/widgets/custom_loading.dart';

import '../../../../core/utils/exports.dart';

class CustomLoadingInSplash extends StatelessWidget {
  const CustomLoadingInSplash({
    super.key,
    required this.height,
    required this.width,
    required this.color,
  });

  final double height;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: height * 0.15,
      right: width * 0.1,
      left: width * 0.1,
      child: CustomLoading(
        size: 80.sp,
        color: color,
      ),
    );
  }
}