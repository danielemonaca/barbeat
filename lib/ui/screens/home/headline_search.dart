import 'package:barbeat/ui/commons/search_field.dart';
import 'package:barbeat/ui/screens/search/search_screen.dart';
import 'package:flutter/material.dart';

class HeadlineSearch extends StatefulWidget {
  final Function() action;
  const HeadlineSearch({super.key, required this.action});

  @override
  State<HeadlineSearch> createState() => _HeadlineSearchState();
}

class _HeadlineSearchState extends State<HeadlineSearch> {
  late FocusNode focusNode;
  late TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    focusNode = FocusNode();
  }

  final black = Colors.black;
  final padding = const EdgeInsets.only(top: 20);
  String title = 'What would you like to drink?';
  String searchCaption = 'Search cocktail';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    void navigateToSearch() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SearchScreen(),
        ),
      );
    }

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
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: black,
                ),
              ),
              Padding(
                padding: padding,
                child: GestureDetector(
                  onTap: navigateToSearch,
                  child: SearchField(
                    controller: textController,
                    focusNode: focusNode,
                    title: searchCaption,
                    action: widget.action,
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
