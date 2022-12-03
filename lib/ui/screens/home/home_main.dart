import 'package:barbeat/ui/screens/home/discover_new_ones.dart';
import 'package:barbeat/ui/screens/home/headline_search.dart';
import 'package:barbeat/ui/screens/home/home_topbar.dart';
import 'package:barbeat/ui/screens/home/most_popular.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeTopBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            HeadlineSearch(action: () => null),
            const DiscoverNewOnes(),
            const MostPopular(),
          ],
        ),
      ),
    );
  }
}
