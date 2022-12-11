// Back to top button widget
import 'package:barbeat/common_libs.dart';

class BackToTopBtn extends StatelessWidget {
  final ScrollController scrollController;
  final bool showbtn;

  const BackToTopBtn({
    Key? key,
    required this.scrollController,
    required this.showbtn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 500),
      opacity: showbtn ? 1.0 : 0.0,
      child: FloatingActionButton(
        onPressed: () {
          scrollController.animateTo(
              //go to top of scroll
              0, //scroll offset to go
              duration: const Duration(milliseconds: 300),
              curve: Curves.fastOutSlowIn);
        },
        backgroundColor: Colors.redAccent,
        child: const Icon(Icons.arrow_upward),
      ),
    );
  }
}
