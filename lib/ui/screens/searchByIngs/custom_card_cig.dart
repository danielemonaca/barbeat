import 'package:flutter/material.dart';
import '../../../cig/CIG.dart';

class CustomCardCIG extends StatelessWidget {
  final String title;
  final Function action;
  final List<String> cigIngs;
  final String cigColor;
  final String cigGlass;
  const CustomCardCIG({
    super.key,
    required this.title,
    required this.action,
    required this.cigIngs,
    required this.cigColor,
    required this.cigGlass,
  });

  final black = const Color(0x40000000);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Align(
      alignment: Alignment.center,
      child: InkWell(
        onTap: action(),
        child: Container(
          width: size.width * 0.36,
          height: size.height * 0.19,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: black,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: size.width * 0.2,
                height: size.height * 0.1,
                child: CIG(
                  cigIngs,
                  cigColor,
                  cigGlass,
                  true,
                ),
              ),
              SizedBox(
                width: size.width * 0.25,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
