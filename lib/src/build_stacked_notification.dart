import 'package:flutter/material.dart';
import 'stacked_cards/stacked_cards.dart';

import 'stacked_notification_actions/stacked_notification_actions.dart';
import 'model/notification_card.dart';

class BuildStackedNotification extends StatefulWidget {
  final List<NotificationCard> notificationCards;
  final Color tileColor;
  final double cornerRadius;
  final double spacing;
  final double padding;
  final List<BoxShadow>? boxShadow;
  final Widget headerTitle;
  final Widget showLessAction;

  BuildStackedNotification({
    Key? key,
    required this.notificationCards,
    required this.tileColor,
    required this.cornerRadius,
    required this.spacing,
    required this.padding,
    required this.boxShadow,
    required this.headerTitle,
    required this.showLessAction,
  }) : super(key: key);

  @override
  _BuildStackedNotificationState createState() =>
      _BuildStackedNotificationState();
}

class _BuildStackedNotificationState extends State<BuildStackedNotification>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  final double _containerHeight = 140.0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    final notificationCards = widget.notificationCards;
    final spacing = widget.spacing;
    final tileColor = widget.tileColor;
    final cornerRadius = widget.cornerRadius;
    final padding = widget.padding;
    final boxShadow = widget.boxShadow;
    final headerTitle = widget.headerTitle;
    final showLessAction = widget.showLessAction;

    return AnimatedBuilder(
      animation: _animationController,
      builder: (_, __) => Column(
        key: ValueKey('NotificationList'),
        children: [
          StackedNotificationActions(
            key: ValueKey('Header'),
            controller: _animationController,
            spacing: spacing,
            padding: padding,
            title: headerTitle,
            showLessAction: showLessAction,
            notificationCount: notificationCards.length,
          ),
          StackedCards(
            key: ValueKey('CollapsedCards'),
            controller: _animationController,
            notificationCards: notificationCards,
            containerHeight: _containerHeight,
            spacing: spacing,
            maxSpacing: 2 * spacing,
            containerColor: tileColor,
            cornerRadius: cornerRadius,
            padding: padding,
            boxShadow: boxShadow,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
