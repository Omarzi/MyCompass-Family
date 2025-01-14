
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../utils/exports.dart';
class CustomLoading extends StatelessWidget {
  const CustomLoading({
    super.key,
    required this.size,
    required this.color,
  });

  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SpinKitCircle(
      color: color,
      size: size,
    );
  }
}
