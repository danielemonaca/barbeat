import 'package:barbeat/ui/commons/circle_button.dart';
import 'package:barbeat/ui/commons/search_field.dart';
import 'package:barbeat/ui/commons/white_bottom_part.dart';
import 'package:barbeat/ui/screens/home/home_main.dart';
import 'package:flutter/material.dart';

class SearchBackground extends StatefulWidget {
  const SearchBackground({super.key});

  @override
  State<SearchBackground> createState() => _SearchBackgroundState();
}

class _SearchBackgroundState extends State<SearchBackground> {
  late TextEditingController textController;
  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    focusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // const titleColor = Color(0xFFFFFFFF);
    const Color colorForArchBackground = Color(0xFFFAF8F2);
    void navigateToHome() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Home(),
        ),
      );
    }

    return Stack(
      children: [
        SizedBox(
          width: size.width,
          height: size.height * 0.2,
          child: Row(
            children: [
              CircleButton(
                action: navigateToHome,
                color: 0xFFFFFFFF,
                shadow: false,
                photoPath: 'assets/common/backIcon.svg',
                size: 40,
              ),
              Padding(
                padding: EdgeInsets.all(size.width * 0.01),
                child: SearchField(
                  controller: textController,
                  focusNode: focusNode,
                  title: 'Ingredient name',
                  action: () => null,
                  width: size.width * 0.70,
                  height: 60,
                  enabled: true,
                ),
              ),
            ],
          ),
        ),
        buildWhiteBottomPartRegular(
          size,
          height: 0.9,
          color: colorForArchBackground,
        ),
      ],
    );
  }
}
