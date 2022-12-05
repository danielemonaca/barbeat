import 'package:barbeat/common_libs.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_shadow/simple_shadow.dart';

Widget buildWhiteBottomPart(Size size, {double? height}) {
  const whiteBottomPart = 'assets/introImages/white_bottom_part.svg';
  const shadowWhiteBottomPartColor = Color(0xFFC7C5C1);
  return Positioned(
    bottom: -40,
    child: SizedBox(
      width: size.width,
      height: size.height * (height ?? 0.65),
      child: SimpleShadow(
          opacity: 0.40,
          color: shadowWhiteBottomPartColor,
          offset: const Offset(-10, -10),
          sigma: 7,
          child: SvgPicture.asset(
            whiteBottomPart,
            fit: BoxFit.cover,
          )),
    ),
  );
}
