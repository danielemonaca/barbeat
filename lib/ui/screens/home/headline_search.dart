import 'package:barbeat/ui/commons/search_field.dart';
import 'package:flutter/material.dart';

class HeadlineSearch extends StatelessWidget {
  final Function() action;
  const HeadlineSearch({super.key, required this.action});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    const black = Colors.black;
    const padding = EdgeInsets.only(top: 20);

    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: size.width * 0.85,
        child: Padding(
          padding: padding,
          child: Column(
            children: [
              const Text(
                'What would you like to drink?',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: black,
                ),
              ),
              Padding(
                padding: padding,
                child: GestureDetector(
                  onTap: action,
                  child: SearchField(
                    title: 'Search cocktail',
                    action: () => null,
                    width: size.width,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
