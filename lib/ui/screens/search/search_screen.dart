import 'package:barbeat/common_libs.dart';
import 'package:barbeat/ui/screens/search/search_background.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final backgroundColor = const Color(0xFFFF9697);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Stack(children: const [SearchBackground()]));
  }
}
