import 'package:flutter/material.dart';

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
                  child: Image.asset(image),
                ),
              ),
              // the title
              Positioned(
                top: 190,
                left: 80,
                child: SizedBox(
                  width: size.width * 0.2,
                  height: size.height * 0.15,
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              // the description
              Positioned(
                top: 220,
                left: 25,
                child: SizedBox(
                  width: size.width * 0.5,
                  height: size.height * 0.15,
                  child: Text(
                    description,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
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
