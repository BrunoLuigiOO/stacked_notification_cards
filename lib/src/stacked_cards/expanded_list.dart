import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../model/notification_card.dart';
import '../notification_tile/notification_tile.dart';

typedef void OnTapSlidButtonCallback(int index);

/// This widget is shown after animating [AnimatedOffsetList].
/// Show all cards in a column, with the option to slide each card.
class ExpandedList extends StatelessWidget {
  final List<NotificationCard> notificationCards;
  final AnimationController controller;
  final double initialSpacing;
  final double spacing;
  final double tilePadding;
  final double endPadding;
  final double containerHeight;
  final Color tileColor;
  final double cornerRadius;
  final List<BoxShadow>? boxShadow;

  const ExpandedList({
    Key? key,
    required this.notificationCards,
    required this.controller,
    required this.containerHeight,
    required this.initialSpacing,
    required this.spacing,
    required this.cornerRadius,
    required this.tileColor,
    required this.tilePadding,
    required this.boxShadow,
    required this.endPadding,
  }) : super(key: key);

  /// Determines whether to show the [ExpandedList] or not
  /// When [AnimatedOffsetList] is shown this widget will not be shown.
  /// When there is only one notification then [ExpandedList] will
  /// always be shown.
  bool _getListVisibility(int length) {
    if (length == 1) {
      return true;
    } else if (controller.value >= 0.8) {
      return true;
    } else {
      return false;
    }
  }

  /// The padding that will be shown at the bottom of
  /// all card, basically bottom padding of [ExpandedList]
  double _getEndPadding(int index) {
    if (index == notificationCards.length - 1) {
      return endPadding;
    } else {
      return 0;
    }
  }

  /// Spacing between two cards this value used
  /// to add padding under each SlidButton
  double _getSpacing(int index, double topSpace) {
    if (index == 0) {
      return 0;
    } else {
      return topSpace;
    }
  }

  /// Top padding of each cards initial padding will
  /// be same as AnimatedOffsetList inter card spacing
  /// then it will shrink (while animating). This will
  /// give bounce animation when cards are expanding.
  // double _topPadding(int index) {
  //   return Tween<double>(
  //           begin: _getSpacing(index, initialSpacing),
  //           end: _getSpacing(index, spacing))
  //       .animate(
  //         CurvedAnimation(
  //           parent: controller,
  //           curve: Interval(0.8, 1.0),
  //         ),
  //       )
  //       .value;
  // }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _getListVisibility(notificationCards.length),
      child: SlidableAutoCloseBehavior(
        child: Column(
          key: ValueKey('ExpandedList'),
          children: [
            ...notificationCards.map(
              (notificationCard) {
                final index = notificationCards.indexOf(notificationCard);
                return Padding(
                  padding: EdgeInsets.only(bottom: endPadding),
                  child: BuildWithAnimation(
                    key: notificationCard.key,
                    containerHeight: containerHeight,
                    cornerRadius: cornerRadius,
                    spacing: _getSpacing(index, spacing),
                    boxShadow: boxShadow,
                    index: index,
                    tileColor: tileColor,
                    endPadding: _getEndPadding(index),
                    tilePadding: tilePadding,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: tilePadding),
                      height: containerHeight,
                      decoration: BoxDecoration(
                        color: tileColor,
                        borderRadius: BorderRadius.circular(cornerRadius),
                      ),
                      child: NotificationTile(
                        height: containerHeight,
                        cornerRadius: cornerRadius,
                        color: tileColor,
                        spacing: spacing,
                        notificationCard: notificationCard,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

/// This widget is used to animate each card when clear action is selected

class BuildWithAnimation extends StatefulWidget {
  final Widget child;
  final double cornerRadius;
  final double containerHeight;
  final int index;
  final List<BoxShadow>? boxShadow;
  final Color tileColor;
  final double endPadding;
  final double spacing;
  final double tilePadding;

  const BuildWithAnimation({
    Key? key,
    required this.child,
    required this.cornerRadius,
    required this.containerHeight,
    required this.index,
    required this.boxShadow,
    required this.tileColor,
    required this.endPadding,
    required this.spacing,
    required this.tilePadding,
  }) : super(key: key);

  @override
  _BuildWithAnimationState createState() => _BuildWithAnimationState();
}

class _BuildWithAnimationState extends State<BuildWithAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      key: ValueKey('BuildWithAnimation'),
      animation: _animationController,
      builder: (_, __) => Opacity(
        opacity: Tween<double>(begin: 1.0, end: 0.0)
            .animate(_animationController)
            .value,
        child: SizeTransition(
          sizeFactor:
              Tween<double>(begin: 1.0, end: 0.0).animate(_animationController),
          child: widget.child,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
