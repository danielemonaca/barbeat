import 'package:flutter/material.dart';
import '../../globals/theme/app_themes.dart';

class SearchField extends StatefulWidget {
  final String title;
  final double width;
  final Function() action;

  const SearchField(
      {super.key,
      required this.title,
      required this.action,
      required this.width});

  static const padding = EdgeInsets.symmetric(horizontal: 25, vertical: 20);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final controller = TextEditingController();
  String input = '';
  static const grey = HomeScreenColors.searchBarText;
  static const shadow = SearchByIngredientsColors.greyShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: shadow,
            offset: Offset(0, 5),
            blurRadius: 20,
          )
        ],
      ),
      child: TextField(
        controller: controller,
        onChanged: (e) => {
          setState(
            () {
              input = e;
            },
          ),
          widget.action()
        }, // TODO: modify here in the future
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: widget.title,
          hintStyle: const TextStyle(
            fontSize: 17,
            color: grey,
          ),
          suffixIcon: input.isEmpty
              ? const Align(
                  widthFactor: 3.5,
                  child: Icon(
                    Icons.search,
                    color: grey,
                  ),
                )
              : Align(
                  widthFactor: 1.5,
                  child: IconButton(
                    icon: const Icon(Icons.clear),
                    color: grey,
                    onPressed: () => setState(
                      () {
                        controller.clear();
                        input = '';
                      },
                    ),
                  ),
                ),
          contentPadding: SearchField.padding,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}