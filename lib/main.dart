import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_test/custom_themes.dart';
import 'package:ui_test/models/dummy_data.dart';
import 'package:ui_test/store/homepage_store.dart';
import 'package:ui_test/store/leaderboard_store.dart';
import 'package:ui_test/ui/home.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<LeaderboardStore>(
          create: (_) =>
              LeaderboardStore(listUserStats: DummyData.getListOfUserStats()),
        ),
        Provider<HomepageStore>(
          create: (_) => HomepageStore(),
        ),
      ],
      child: MaterialApp(
        title: 'UI Test',
        theme: CustomThemes.getAppTheme(context),
        home: const Homepage(),
      ),
    );
  }
}
