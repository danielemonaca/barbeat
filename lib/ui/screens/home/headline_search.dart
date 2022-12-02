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
    String title = 'What would you like to drink?';
    String searchCaption = 'Search cocktail';

    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: size.width * 0.85,
        child: Padding(
          padding: padding,
          child: Column(
            children: [
              Text(
                title,
                style: const TextStyle(
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
                    title: searchCaption,
                    action: action,
                    width: size.width,
                    enabled: false,
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
