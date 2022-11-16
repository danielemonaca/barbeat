import 'package:flutter/material.dart';

class CustomOverflowCard extends StatelessWidget {
  const CustomOverflowCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: InkWell(
        onTap: null,
        child: SizedBox(
          width: size.width * 0.35,
          height: size.height * 0.3,
          child: Stack(
            children: [
              Align(
                child: Container(
                  width: size.width * 0.3,
                  height: size.height * 0.15,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x40000000),
                        offset: Offset(0, 4),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 25,
                left: 40,
                child: SizedBox(
                  width: size.width * 0.15,
                  height: size.height * 0.15,
                  child: Image.asset('assets/introImages/cocktail2.png'),
                ),
              ),
              Positioned(
                top: 130,
                left: 30,
                child: SizedBox(
                  width: size.width * 0.2,
                  height: size.height * 0.15,
                  child: const Text(
                    'Search by Ingredient',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15),
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
