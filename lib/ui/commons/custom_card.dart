import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  final String image;
  final String title;
  final Function() action;
  const CustomCard(
      {super.key,
      required this.title,
      required this.image,
      required this.action});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String imgType = image.substring(image.length - 3);
    const black = Color(0x40000000);
    return Center(
      child: InkWell(
        onTap: action,
        child: Container(
          width: size.width * 0.35,
          height: size.height * 0.17,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            boxShadow: const [
              BoxShadow(
                blurRadius: 4,
                color: black,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: size.width * 0.13,
                height: size.height * 0.09,
                child: imgType == 'png'
                    ? Image.asset(image)
                    : SvgPicture.asset(image),
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
        ),
      ),
    );
  }
}
