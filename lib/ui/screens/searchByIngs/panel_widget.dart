import 'package:barbeat/ui/commons/circle_button.dart';
import 'package:barbeat/ui/commons/search_field.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class PanelWidget extends StatefulWidget {
  final ScrollController controller;
  final PanelController panelController;
  const PanelWidget(
      {super.key, required this.controller, required this.panelController});

  @override
  State<PanelWidget> createState() => _PanelWidgetState();
}

class _PanelWidgetState extends State<PanelWidget> {
  late FocusNode focusNode;
  late TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    focusNode = FocusNode();
    focusNode.addListener(() {
      // print('has focus ${focusNode.hasFocus}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildDragHandle(),
        Align(
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: openPanel,
                child: IgnorePointer(
                  child: SearchField(
                    controller: textController,
                    focusNode: focusNode,
                    title: 'Ingredient name',
                    action: () => null,
                    width: 280,
                    enabled: true,
                  ),
                ),
              ),
              CircleButton(
                action: () => null,
                color: 0xFFF54749,
                photoPath: 'assets/common/plusIcon.svg',
                size: 50,
              ),
            ],
          ),
        ),
        KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
          return Text(
            'The keyboard is: ${isKeyboardVisible ? 'VISIBLE' : 'NOT VISIBLE'}',
          );
        }),
      ],
    );
  }

  void togglePanel() =>
      widget.panelController.isPanelOpen ? openPanel() : focusNode.unfocus();

  void openPanel() {
    widget.panelController.open();
    focusNode.requestFocus();
  }

  Widget _buildDragHandle() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 15),
        child: Container(
          width: 50,
          height: 5,
          decoration: BoxDecoration(
            color: const Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
