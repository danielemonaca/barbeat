import 'dart:async';

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
  late StreamSubscription<bool> subscription;
  late TextEditingController textController;
  final greyDragHandle = const Color(0xFFD9D9D9);
  bool panelOpen = false;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    focusNode = FocusNode();
    subscription = KeyboardVisibilityController().onChange.listen(
      (isVisible) {
        if (!isVisible) {
          focusNode.unfocus();
          setState(() {
            panelOpen = false;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    focusNode.dispose();
    subscription.cancel();

    super.dispose();
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
                  ignoring: !panelOpen,
                  child: _buildSearchBar(),
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
      ],
    );
  }

  void openPanel() {
    widget.panelController.open();
    focusNode.requestFocus();
    setState(() {
      panelOpen = true;
    });
  }

  Widget _buildSearchBar() {
    return SearchField(
      controller: textController,
      focusNode: focusNode,
      title: 'Ingredient name',
      action: () => null,
      width: 280,
      enabled: true,
    );
  }

  Widget _buildDragHandle() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 15),
        child: Container(
          width: 50,
          height: 5,
          decoration: BoxDecoration(
            color: greyDragHandle,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
