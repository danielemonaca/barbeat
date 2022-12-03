import 'dart:ui';

import 'package:barbeat/cig/helpers/string_color_to_hex.dart';
import 'package:rive/components.dart';
import 'package:rive/rive.dart';

class RiveCustomHelper {
  late final StateMachineController controller;
  late final Artboard artboard;

  late final Node _mainNode;

  RiveCustomHelper(this.controller, this.artboard);

  RiveCustomHelper.fromArtboard(Artboard art, String stateMachineName) {
    controller = StateMachineController.fromArtboard(art, stateMachineName)
        as StateMachineController;

    artboard = art;

    /// NOTE: It is important that the name of the node is the same as the name of the Artboard
    _mainNode = artboard.artboard.children.firstWhere(
            (node) => node.name == artboard.name,
            orElse: () => throw Exception(
                'ERROR: Main node not found in animation. Check that the name of the root node is the same as the name of the Artboard in Rive'))
        as Node;

    art.addController(controller);
  }

  StateMachineController getController() {
    return controller;
  }

  void setController(StateMachineController controller) {
    this.controller = controller;
  }

  void setBoolInput(String inputName, bool value) {
    final input = controller.findInput<bool>(inputName) as SMIBool;
    input.value = value;
  }

  Node getMainNode() {
    return _mainNode;
  }

  void setMainNode(Node node) {
    _mainNode = node;
  }

  _getAllNodes() {
    final mainGroup =
        _mainNode.artboard?.children.first.artboard?.children.first as Node;
// ignoring next lint error as it is not bad to have an extra nullish-check for the mainGroup
    // ignore: unnecessary_null_comparison
    if (mainGroup == null) {
      throw Exception(
          'ERROR: The root node must have a child and it has not been found');
    }

    return mainGroup.children;
  }

  _getNode(String name) {
    final nodes = _getAllNodes();

    return nodes.firstWhere((node) => node.name == name,
        orElse: () => throw Exception(
            'ERROR: Node with name "$name" not found in animation'));
  }

  /// Set the color of the FIRST CHILD of the specified node
  void setFirstChildNodeColor(String nodeName, String color) {
    final node = _getNode(nodeName);

    final fill =
        (node.children.first as Shape).fills.first.children[0] as SolidColor;
    fill.colorValue = Color(stringColorToHex(color)).value;
  }

  void setNodeColor(String nodeName, String childNodeName, String color) {
    final node = _getNode(nodeName);

    final fill = (node.children.firstWhere((node) => node.name == childNodeName)
            as Shape)
        .fills
        .first
        .children[0] as SolidColor;
    fill.colorValue = Color(stringColorToHex(color)).value;
  }

  void setNodeStrokeColor(String nodeName, String color) {
    final node = _getNode(nodeName);

    final stroke = node.strokes.first.children[0] as SolidColor;

    stroke.colorValue = Color(stringColorToHex(color)).value;
  }

  void setColorLiquid(String colorLiquid) {
    setFirstChildNodeColor('Cocktail', colorLiquid);
  }

  void setColorPeel(String colorPeel) {
    setNodeStrokeColor('Peel', colorPeel);
  }
}
