library stacked_notification_cards;

import 'package:flutter/material.dart';

import 'src/build_stacked_notification.dart';
import 'src/model/notification_card.dart';

export 'src/model/notification_card.dart';

/// This package will let you
class StackedNotificationCards extends StatelessWidget {
  /// List of [NotificationCard]s to show.
  final List<NotificationCard> notificationCards;

  /// Color of each card.
  final Color cardColor;

  /// Corner radius of [NotificationCard].
  final double cardCornerRadius;

  /// Spacing between [NotificationCard]s  when they are expanded.
  final double cardsSpacing;

  /// Padding around the whole widget.
  final double padding;

  /// Shadow behind every [NotificationCard].
  final List<BoxShadow>? boxShadow;

  /// This widget is shown at the top-left of all notifications
  final Widget actionTitle;

  /// This widget is shown at the top-right of all notifications and has on tap clearAll callback.
  final Widget showLessAction;

  const StackedNotificationCards({
    Key? key,
    required this.notificationCards,
    required this.cardColor,
    required this.actionTitle,
    required this.showLessAction,
    this.boxShadow,
    this.cardCornerRadius = 16.0,
    this.cardsSpacing = 10.0,
    this.padding = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (notificationCards.length > 0) {
      return BuildStackedNotification(
        key: key,
        notificationCards: notificationCards,
        tileColor: cardColor,
        cornerRadius: cardCornerRadius,
        spacing: cardsSpacing,
        padding: padding,
        boxShadow: boxShadow,
        headerTitle: actionTitle,
        showLessAction: showLessAction,
      );
    } else {
      return SizedBox.shrink(
        key: ValueKey('EmptySizedBox'),
      );
    }
  }
}
