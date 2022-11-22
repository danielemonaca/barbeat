import 'package:barbeat/ui/commons/search_field.dart';
import 'package:flutter/material.dart';

class HeadlineSearch extends StatelessWidget {
  const HeadlineSearch({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: size.width * 0.85,
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              const Text(
                'What would you like to drink?',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SearchField(
                    title: 'Search cocktail',
                    action: () => null,
                    width: size.width * 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
