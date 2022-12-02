import 'package:barbeat/ui/screens/home/discover_new_ones.dart';
import 'package:barbeat/ui/screens/home/headline_search.dart';
import 'package:barbeat/ui/screens/home/home_topbar.dart';
import 'package:barbeat/ui/screens/home/most_popular.dart';
import 'package:barbeat/ui/screens/searchByIngs/searchByIngs_main.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // function for changing to search by ingredients screen
    void navigateToSearch() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SearchByIngredients(),
        ),
      );
    }

    return Scaffold(
      appBar: const HomeTopBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            HeadlineSearch(action: navigateToSearch),
            const DiscoverNewOnes(),
            const MostPopular(),
          ],
        ),
      ),
    );
  }
}
