import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:ui_test/store/leaderboard_store.dart';
import 'package:ui_test/ui/top_stats.dart';

class Leaderboard extends StatefulWidget {
  const Leaderboard({Key? key}) : super(key: key);

  @override
  _LeaderboardState createState() => _LeaderboardState();
}

class _LeaderboardState extends State<Leaderboard> {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<LeaderboardStore>(context);
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Leaderboard',
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(height: 24.0),
                Observer(
                  builder: (_) {
                    return Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: CupertinoSlidingSegmentedControl<int>(
                            groupValue: store.segmentSelected,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6.0, vertical: 6.0),
                            thumbColor: Theme.of(context).colorScheme.secondary,
                            onValueChanged: (int? value) {
                              store.changeSelectedSegment(value!);
                            },
                            children: {
                              0: _buildSegement('Today', 0),
                              1: _buildSegement('Weekly', 1),
                              2: _buildSegement('Monthly', 2),
                            },
                          ),
                        ),
                        if (store.segmentSelected == 2) _getMonthlyStats(),
                        if (store.segmentSelected == 0)
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Today Stats',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ),
                          ),
                        if (store.segmentSelected == 1)
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Weekly Stats',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ),
                          ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _getMonthlyStats() {
    final store = Provider.of<LeaderboardStore>(context);

    return Column(
      children: [
        const SizedBox(height: 24.0),
        const TopStats(),
        const SizedBox(height: 24.0),
        Observer(
          builder: (_) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: store.listUserStats.length,
                  itemBuilder: (context, index) {
                    return _listItem(store, index);
                  }),
            );
          },
        ),
      ],
    );
  }

  Widget _buildSegement(String text, int i) => Container(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyText2?.copyWith(
                color: i == context.read<LeaderboardStore>().segmentSelected
                    ? Colors.white
                    : Colors.black,
              ),
        ),
      );

  Widget _listItem(LeaderboardStore store, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(width: 3, color: Colors.grey.shade200),
        ),
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  store.listUserStats[index].showingsChanged.toString(),
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Icon(
                  store.listUserStats[index].increased
                      ? Icons.arrow_drop_up_rounded
                      : Icons.arrow_drop_down_rounded,
                ),
              ],
            ),
            const SizedBox(
              width: 16,
            ),
            CircleAvatar(
              radius: 24,
              backgroundImage:
                  AssetImage(store.listUserStats[index].imageInAssets),
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              store.listUserStats[index].name,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontWeight: FontWeight.w500),
            ),
            Expanded(
              child: Container(height: 1),
            ),
            Text(
              store.listUserStats[index].showings.toString(),
              style: Theme.of(context).textTheme.headline5?.copyWith(),
            ),
            const SizedBox(
              width: 16,
            ),
          ],
        ),
      ),
    );
  }
}
