import 'package:flutter/material.dart';

/// This widget will be shown at the top of the stacked card. It has title.
/// and two [Button]s. 'showLess' and 'clear all'
/// The [Button]s are only visible when cards are expanded.
class StackedNotificationActions extends StatelessWidget {
  final AnimationController controller;
  final double padding;
  final double spacing;
  final Widget showLessAction;
  final Widget title;
  final int notificationCount;

  const StackedNotificationActions({
    Key? key,
    required this.controller,
    required this.padding,
    required this.spacing,
    required this.title,
    required this.showLessAction,
    required this.notificationCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Animation<double> opacity = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.4, 0.6),
      ),
    );

    return Padding(
      padding: EdgeInsets.fromLTRB(
        padding,
        padding,
        padding,
        spacing,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: title),
          Visibility(
            visible: notificationCount > 1 && opacity.value > 0.0,
            child: InkWell(
              onTap: () {
                controller.reverse();
              },
              child: Opacity(
                opacity: opacity.value,
                child: showLessAction,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
