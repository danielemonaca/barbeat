import 'package:barbeat/cig/CIG.dart';
import 'package:barbeat/common_libs.dart';

class SearchItem extends StatelessWidget {
  String? color;
  String name;
  int? abv;
  bool alcohol = false;
  List<String> ings;
  String colorLiquid;
  String glass;
  bool animated;

  SearchItem(
      {super.key,
      required this.name,
      this.color,
      this.abv,
      this.alcohol = false,
      required this.ings,
      required this.colorLiquid,
      required this.glass,
      required this.animated});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Color(int.parse(color!)),
              child: CIG(
                ings,
                colorLiquid,
                glass,
                animated,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Metropolis',
                      color: Color(0xFF7A7A7A)),
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
