import 'package:flutter/material.dart';

class NoIngsPic extends StatelessWidget {
  final Size size;
  const NoIngsPic({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    const pic = 'assets/searchByIngs/noIngsPic.png';
    const grey = Color(0xFF686868);
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(bottom: size.height * 0.2),
        child: SizedBox(
          width: size.width,
          height: size.height * 0.4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(pic),
              const Text(
                'No Ingredients selected',
                style: TextStyle(
                  fontSize: 18,
                  color: grey,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
