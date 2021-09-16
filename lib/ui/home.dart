import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:ui_test/store/homepage_store.dart';
import 'package:ui_test/ui/leaderboard.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<HomepageStore>(context);

    return Observer(
      builder: (_) {
        return Scaffold(
          body: store.appBarItemSelected == 2
              ? const Leaderboard()
              : Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(store.appBarItemSelected == 0
                        ? 'Maps'
                        : store.appBarItemSelected == 1
                            ? 'Mails'
                            : store.appBarItemSelected == 2
                                ? 'Home'
                                : store.appBarItemSelected == 3
                                    ? 'Projects'
                                    : 'Payments'),
                  ),
                ),
          bottomNavigationBar: BottomNavigationBar(
              onTap: (v) {
                store.changeAppBarSelectedItem(v);
              },
              currentIndex: store.appBarItemSelected,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Theme.of(context).colorScheme.secondary,
              unselectedItemColor: Colors.grey,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.travel_explore_rounded,
                    ),
                    label: '1'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.mail_outline_rounded,
                    ),
                    label: '1'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.widgets_rounded,
                    ),
                    label: '1'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.work_outline_rounded,
                    ),
                    label: '1'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.payment,
                    ),
                    label: '1'),
              ]),
        );
      },
    );
  }
}
