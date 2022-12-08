import 'package:barbeat/common_libs.dart';

class AbvChip extends StatelessWidget {
  final int abv;

  const AbvChip({super.key, required this.abv});

  @override
  Widget build(BuildContext context) {
    /*
      White background rectangle chip with smoothed corner with an emoji and text inside
    */
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '🔥',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(width: 5),
          Text(
            abv > 0 ? '~$abv%' : 'Alcohol Free',
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'Metropolis',
                color: Color(0xFF7A7A7A)),
          ),
        ],
      ),
    );
  }
}
