import 'package:barbeat/common_libs.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget buildWhiteBottomPart(Size size, {double? height, Color? color}) {
  const whiteBottomPart = 'assets/introImages/white_bottom_part.svg';
  return Align(
    alignment: Alignment.bottomCenter,
    child: SizedBox(
      width: size.width,
      height: size.height * (height ?? 0.65),
      child: SvgPicture.asset(
        whiteBottomPart,
        fit: BoxFit.cover,
        color: color ?? Colors.white,
      ),
    ),
  );
}
