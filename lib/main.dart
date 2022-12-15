import 'package:barbeat/globals/theme/custom_themes.dart';
// import 'package:barbeat/ui/screens/details/details_main.dart';
// import 'package:barbeat/ui/screens/details/mockData/mocked_drink.dart';
import 'package:barbeat/ui/screens/home/home_main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BarBeat',
      theme: CustomTheme.lightTheme,
      // imported class for localization purposes
      supportedLocales: L10n.all,
      // needed for localization
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      // home: CocktailDetailsPage(drink: mockedDrink),
      home: const Home(),
    );
  }
}
