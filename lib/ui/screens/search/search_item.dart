import 'package:barbeat/common_libs.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchItem extends StatelessWidget {
  String? color;
  String name;
  String? picturePath;
  int? abv;
  bool alcohol = false;

  SearchItem(
      {super.key,
      required this.name,
      this.color,
      this.picturePath,
      this.abv,
      this.alcohol = false});

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
              child: SvgPicture.asset(
                picturePath!,
                width: 30,
                height: 30,
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
                AbvChip(abv: abv!, alcohol: alcohol),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
