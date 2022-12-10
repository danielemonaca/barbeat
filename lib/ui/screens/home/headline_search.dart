import 'package:barbeat/ui/commons/search_field.dart';
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
                child: SearchField(
                  controller: textController,
                  focusNode: focusNode,
                  title: searchCaption,
                  action: widget.action,
                  width: size.width,
                  enabled: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
