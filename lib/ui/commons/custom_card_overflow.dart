import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CustomOverflowCard extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final Function() action;

  const CustomOverflowCard(
      {super.key,
      required this.title,
      required this.description,
      required this.image,
      required this.action});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String imgType = image.substring(image.length - 3);
    return Center(
      child: InkWell(
        onTap: action,
        child: SizedBox(
          width: size.width * 0.6,
          height: size.height * 0.4,
          child: Stack(
            children: [
              // container with all the content inside of it
              Align(
                child: Container(
                  width: size.width * 0.5,
                  height: size.height * 0.25,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 18,
                        color: Color(0x99DBDAD4),
                        offset: Offset(0, 6),
                      )
                    ],
                  ),
                ),
              ),
              // the image
              Positioned(
                top: -55,
                left: 50,
                child: SizedBox(
                  width: size.width * 0.35,
                  height: size.height * 0.35,
                  child: imgType == 'png'
                      ? Image.asset(image)
                      : SvgPicture.asset(image),
                ),
              ),
              Positioned(
                top: 160,
                left: 20,
                child: SizedBox(
                  height: size.height * 0.15,
                  width: size.width * 0.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: size.width * 0.4,
                        height: size.height * 0.04,
                        // fit: BoxFit.contain,
                        child: AutoSizeText(
                          maxLines: 2,
                          title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.4,
                        height: size.height * 0.04,
                        // fit: BoxFit.contain,
                        child: AutoSizeText(
                          maxLines: 2,
                          description,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
