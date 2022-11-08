import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  SearchField({super.key});

  final TextEditingController _controller = TextEditingController();

  static const padding = EdgeInsets.symmetric(horizontal: 25, vertical: 20);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x59DBDAD4),
            offset: Offset(0, 5),
            blurRadius: 20,
          )
        ],
      ),
      child: TextField(
        controller: _controller,
        onChanged: null, // temporary
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: 'Ingredient Name',
          hintStyle: const TextStyle(
            fontSize: 17,
            color: Color(0xFFB5B5B5),
          ),
          suffixIcon: const Align(
            widthFactor: 3.5,
            child: Icon(
              Icons.search,
              color: Color(0xFFB5B5B5),
            ),
          ),
          contentPadding: padding,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}
