import 'package:barbeat/ui/commons/circle_button.dart';
import 'package:barbeat/ui/commons/search_field.dart';
import 'package:flutter/material.dart';

class PanelWidget extends StatelessWidget {
  final ScrollController controller;
  const PanelWidget({super.key, required this.controller});

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
              SearchField(
                title: 'Ingredient name',
                action: () => null,
                width: 280,
                enabled: true,
              ),
              CircleButton(
                action: () => null,
                color: 0xFFF54749,
                photoPath: 'assets/common/plusIcon.svg',
                size: 50,
              )
            ],
          ),
        )
      ],
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
            color: const Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
