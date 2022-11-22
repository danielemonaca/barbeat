import 'package:barbeat/ui/screens/home/headline_search.dart';
import 'package:barbeat/ui/screens/home/home_topbar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeTopBar(),
      body: Column(
        children: const [
          HeadlineSearch(),
        ],
      ),
    );
  }
}
