import 'package:flutter/material.dart';
import 'package:ui_test/ui/block_builder.dart';

class TopStats extends StatefulWidget {
  const TopStats({Key? key}) : super(key: key);

  @override
  _TopStatsState createState() => _TopStatsState();
}

class _TopStatsState extends State<TopStats> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(children: [
        const Padding(
          padding: EdgeInsets.only(top: 150.0),
          child: BlockBuilder(),
        ),
        _topUserStats(),
      ]),
    );
  }

  Widget _topUserStats() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: _getUserStatsAndImage('assets/images/human_1.jpg', 40.0,
              arrowAbove: true,
              increased: true,
              isWinner: false,
              showings: 4,
              name: 'Joe West'),
        ),
        _getUserStatsAndImage('assets/images/human_2.jpg', 40.0,
            arrowAbove: false,
            increased: false,
            isWinner: true,
            showings: 5,
            name: 'John Doe'),
        Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: _getUserStatsAndImage('assets/images/human_3.jpg', 40.0,
              arrowAbove: false,
              increased: false,
              isWinner: false,
              showings: 8,
              name: 'Joe Brown'),
        ),
      ],
    );
  }

  Widget _getUserStatsAndImage(String image, double size,
      {required int showings,
      required bool increased,
      required bool isWinner,
      required bool arrowAbove,
      required String name}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _getStats(showings, increased, isWinner, arrowAbove),
        _getUserImage(image, size),
        _getUserName(name),
      ],
    );
  }

  Widget _getStats(
      int showings, bool increased, bool isWinner, bool arrowAbove) {
    return isWinner
        ? Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Image.asset(
              'assets/images/crown.png',
              height: 24,
              width: 24,
              fit: BoxFit.fitWidth,
            ),
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (arrowAbove)
                Icon(
                  increased
                      ? Icons.arrow_drop_up_rounded
                      : Icons.arrow_drop_down_rounded,
                ),
              if (arrowAbove)
                Text(
                  showings.toString(),
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              const SizedBox(
                height: 2,
              ),
              if (!arrowAbove)
                Text(showings.toString(),
                    style: Theme.of(context).textTheme.bodyText2),
              if (!arrowAbove)
                Icon(increased
                    ? Icons.arrow_drop_up_rounded
                    : Icons.arrow_drop_down_rounded),
              const SizedBox(
                height: 2,
              ),
            ],
          );
  }

  Widget _getUserImage(String image, double size) {
    return CircleAvatar(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      radius: size,
      child: CircleAvatar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        radius: size - 3,
        child: CircleAvatar(
          backgroundImage: AssetImage(image),
          radius: size - 6,
        ),
      ),
    );
  }

  Widget _getUserName(String name) {
    return Text(
      name,
      style: Theme.of(context).textTheme.bodyText1,
    );
  }
}
