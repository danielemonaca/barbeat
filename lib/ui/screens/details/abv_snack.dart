import 'package:barbeat/common_libs.dart';

class AbvSnack extends StatelessWidget {
  const AbvSnack({super.key});

  @override
  Widget build(BuildContext context) {
    return SnackBar(
      content: const Text('ABV must be between 0 and 100'),
      backgroundColor: Colors.red,
    );
  }
}
