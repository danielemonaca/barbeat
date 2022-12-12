import 'package:barbeat/cig/helpers/rive_custom_helper.dart';
import 'package:barbeat/common_libs.dart';
import 'package:rive/rive.dart';

class FavoriteCircleButton extends StatefulWidget {
  final bool isFavorite;
  final Function(bool) onFavoriteChanged;

  const FavoriteCircleButton({
    Key? key,
    required this.isFavorite,
    required this.onFavoriteChanged,
  }) : super(key: key);

  @override
  State<FavoriteCircleButton> createState() => _FavoriteCircleButtonState();
}

class _FavoriteCircleButtonState extends State<FavoriteCircleButton> {
  final _animationStateName = 'favorite_state_machine';
  final _artboardName = 'favorite_artboard';
  final _riveFileLocation = 'assets/animations/favorite_btn_animation.riv';
  late Artboard _artboard;

  final input = 'Like';

  void _onInit(Artboard art) {
    final riveHelper = RiveCustomHelper.fromArtboard(art, _animationStateName);

    setState(() {
      _artboard = art;
    });

    riveHelper.setBoolInput(input, widget.isFavorite);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final riveHelper =
            RiveCustomHelper.fromArtboard(_artboard, _animationStateName);
        riveHelper.setBoolInput(input, !widget.isFavorite);

        widget.onFavoriteChanged(!widget.isFavorite);

        setState(() {});
      },
      child: SizedBox(
        width: 40,
        height: 40,
        child: RiveAnimation.asset(_riveFileLocation,
            artboard: _artboardName,
            stateMachines: [_animationStateName],
            alignment: Alignment.center,
            fit: BoxFit.contain,
            onInit: _onInit),
      ),
    );
  }
}
